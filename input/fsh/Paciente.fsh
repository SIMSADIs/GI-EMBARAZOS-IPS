Alias: Edad = https://hl7chile.cl/fhir/ig/clembarazos/StructureDefinition/Edad

Profile: PacienteEmbCL
Parent: PacienteCLIps
Id: Paciente-embarazo-cl-ips
Title: "Paciente (Embarazo-CL)"
Description: "Perfil de paciente basado en la IPS chilena. Este perfil restringe el recurso Paciente para representar a la paciente de acuerdo a su estado de embarazo, o en cualquier otro caso, dependiendo de su estado ligado a una observación."

* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^status = #draft
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* identifier 1..* MS //EL paciente puede tener más de un identificador; suele ser el RUN nacional
//* identifier.system 0..1 MS
//* identifier.value 0..1 MS
* identifier.use 1..1 MS
* identifier ^slicing.discriminator.type = #value //value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #closed
* identifier ^slicing.description = "Slicing para determinar otros tipos de identificadores como pasaporte, n° de ficha clínica, etc."
* identifier ^slicing.ordered = false

//Identificador RUN
* identifier contains RUN 0..1 MS
* identifier[RUN].system 1..1 MS
* identifier[RUN].system only uri
* identifier[RUN].system ^short = "Sistema donde está codificado el RUN"
* identifier[RUN].system ^definition = "URI que identifica el sistema del cual se emite el RUN."

* identifier[RUN].value 1..1 MS
* identifier[RUN].value only string
* identifier[RUN].value ^short = "Número de RUN del paciente" //RUN
* identifier[RUN].value ^definition = "Número de RUN, el cual es el Identificador nacional oficial en Chile."

* identifier[RUN].use 1..1 MS
* identifier[RUN].use only code
* identifier[RUN].use = #official //Se discrimina por el uso del identificador, en este caso es el oficial
* identifier[RUN].use ^short = "Uso del identificador, en este caso es Oficial." //RUN

//Identificador Otro
* identifier contains OtrosIdentificadores 0..1 MS
* identifier[OtrosIdentificadores].system 1..1 MS 
* identifier[OtrosIdentificadores].system only uri
* identifier[OtrosIdentificadores].system ^short = "Sistema donde está codificado el otro identificador"
* identifier[OtrosIdentificadores].system ^definition = "URI que identifica el sistema del cual se emite el otro identificador."

* identifier[OtrosIdentificadores].value 1..1 MS
* identifier[OtrosIdentificadores].value only string
* identifier[OtrosIdentificadores].value ^short = "Número del identificador del paciente" //RUN
* identifier[OtrosIdentificadores].value ^definition = "Identificador alternativo, como pasaporte u otro documento oficial."

* identifier[OtrosIdentificadores].use 1..1 MS
* identifier[OtrosIdentificadores].use only code
* identifier[OtrosIdentificadores].use = #secondary //Se discrimina por el uso del identificador, en este caso es el secundario
* identifier[OtrosIdentificadores].use ^short = "Uso del identificador, en este caso es Secundario." //RUN

* name ^requirements = "Debe siempre existir un nombre sobre el cual se pueda requerir información del paciente"
* name.text MS
* name.text ^definition = "En caso de no poderse describir adecuadamente el nombre se puede escribir en este campo de texto como lo interpreta el registrador"
* name.text ^min = 0

* name[NombreOficial] 1..1 MS
* name[NombreOficial].given 1..*
* name[NombreOficial].family 1..1 MS

* birthDate 1..1 MS

* extension ^short = "Edad del paciente"
* extension contains Edad named Edad 0..1 MS

* address MS

//Invariant: ips-pat-1
//Description: "Patient.name.given, Patient.name.family o Patient.name.text DEBEN estar presentes"
//Severity: #error
//Expression: "family.exists() or given.exists() or text.exists()"