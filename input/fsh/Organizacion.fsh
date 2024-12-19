Alias: $VSRol =  http://hl7.org/fhir/uv/ips/ValueSet/healthcare-professional-roles-uv-ips
Alias: $VSEspecialidades =  https://hl7chile.cl/fhir/ig/clcore/ValueSet/VSEspecialidadesCL

Profile: OrganizacionEmbCL
Parent: OrganizacionClIps
Id: Organizacion-embarazo-cl-ips
Title: "Organización (Embarazo-CL)"
Description: "Perfil de la organización basado en la IPS chilena. Este perfil restringe el recurso de recurso Organización para representar a una organización que actúa como ejecutante u observador para una observación de resultados o como ejecutante para un procedimiento relacionado al embarazo."

* name 1..1 MS

* telecom 1..* MS
* telecom.system 1..1 MS
* telecom.value 1..1 MS

