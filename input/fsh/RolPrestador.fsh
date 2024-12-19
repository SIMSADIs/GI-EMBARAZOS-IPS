//Alias: $VSRol =  http://hl7.org/fhir/uv/ips/ValueSet/healthcare-professional-roles-uv-ips
//Alias: $VSEspecialidades =  https://hl7chile.cl/fhir/ig/clcore/ValueSet/VSEspecialidadesCL
//Alias: CodeableConceptIPS = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips

Profile: RolPrestadorEmbCL
Parent: RolPrestadorClIps
Id: RolPrestador-embarazo-cl-ips
Title: "Rol de Prestador Individual (Embarazo-CL)"
Description: "Perfil del rol del prestador basado en la IPS chilena. Este perfil restringe el recurso de rol de prestador para representar a un profesional que actúa como observador de resultados expresados."

* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^status = #draft
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* practitioner only Reference(Prestador-embarazo-cl-ips)
* practitioner 1..1 MS

* organization only Reference(Organizacion-embarazo-cl-ips)
* organization 1..1 MS

* code 1..* MS
* code only CodeableConceptIPS
* code from VSRolProfesional (preferred)

* specialty 0..* MS
* specialty only CodeableConceptIPS
* specialty from  VSEspecialidadesEmb (preferred)