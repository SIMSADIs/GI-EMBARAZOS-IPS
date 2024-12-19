Alias: CSTipoIdentificador = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador

Instance:    Prestador-Emb-Ejemplo
InstanceOf:  PrestadorEmbCL
Usage:       #example
Title:       "Ejemplo de Prestador de Salud"
Description: "Ejemplo de prestador de salud que atiende a la paciente de acuerdo a lo declarado en el perfil de la guía."

//Identificación por Cédula Chilena
* identifier[run].use = #official
* identifier[run].value = "15325467-k"
* identifier[run].type.coding.system = CSTipoIdentificador
* identifier[run].type.coding.code = #01
* identifier[run].type.coding.display = "RUN"

//Nombre Prestador
* name.use = #official
* name.family = "Zuñiga"
* name.given = "Bernarda"
* name.given[1] = "Antonella"

//* telecom.system = #phone
//* telecom.use = #mobile
//* telecom.value = "944323278"

* telecom.system = #email
* telecom.use = #work
* telecom.value = "Bernarda.antonellaCesfam@hotmail.com"