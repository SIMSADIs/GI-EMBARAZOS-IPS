Profile: CondicionSaludCL
Parent: ConditionClIps
Id: Condicion-de-salud-cl-ips
Title: "Condición de salud (Embarazo-CL)"
Description: "Perfil de condición de salud basado en la IPS chilena. Este perfil restringe el recurso Condition para representar condiciones o patologías que puede padecer la paciente."

* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^status = #draft
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* subject 1..1 MS
* subject only Reference(PacienteEmbCL)

* code 1..1 MS
* code only CodeableConceptIPS
* code from VSPatologias (preferred)
  * ^binding.description = "Código para una condición clínica (o problema ausente/desconocido) proveniente de SNOMED CT."

//SE ELIMINO LA EXTENSION CONDICIONPOSTPARTO DADO QUE SE TIENE NOTE
* note 0..* 
* note ^short = "Información adicional de la condición de salud de la paciente. Puede indicar la condición post parto anterior en caso de que haya sufrido alguna."