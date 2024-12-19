Alias: $medication-snomed-absent-unknown-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/medication-snomed-absent-unknown-uv-ips
Alias: $medicine-route-of-administration = http://hl7.org/fhir/uv/ips/ValueSet/medicine-route-of-administration

Profile: PrescripcionEmbClIps
Parent: PrescripcionClIps
Id: Prescripcion-embarazo-cl-ips
Title: "Prescripción de medicación (Embarazo-CL)"
Description: "Perfil de prescripción basado en la IPS chilena. Este perfil representa la prescripción del medicamento que se le da a la paciente, en modo de receta, para poder ser retirado en la farmacia correspondiente al centro de salud."

* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^status = #draft
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* medication[x] only CodeableConceptIPS  or Reference(MedicamentoCL)
* medication[x] MS
* medication[x] from VSMedicamentos (preferred)
* medication[x] ^definition = "Identifica la medicación administrada. Puede ser un enlace a un recurso que represente los detalles de la medicación o un simple atributo que contenga un código. Para mejorar la interoperabilidad global, se recomienda encarecidamente utilizar la referencia a un recurso de medicación, limitando el uso de medicationCodeableConcept únicamente a los casos en los que no se disponga de más información que un simple código."
* medication[x] ^binding.description = "Códigos SNOMED CT para medicamentos relacionados a vitaminas que puede consumir la paciente embarazada o un código para medicamento ausente/desconocido"

* subject only Reference(PacienteEmbCL)
* subject MS
* subject.reference 1..1 MS

* requester 1..1 MS
* requester only Reference(PrestadorEmbCL or OrganizacionEmbCL or RolPrestadorEmbCL)

* dosageInstruction 1..* MS
* dosageInstruction.text MS
* dosageInstruction.timing 1..1 MS
* dosageInstruction.doseAndRate 1..* MS

