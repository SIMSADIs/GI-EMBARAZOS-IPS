Profile: UsoDeMedicamentoCL
Parent: RegMedicamentosClIps
Id: Uso-de-medicamentos-cl-ips
Title: "Uso De Medicamentos (Embarazo-CL)"
Description: "Perfil del uso de medicamentos basado en la IPS chilena. Este perfil restringe el recurso MedicationStatement para representar el uso de medicamentos por parte de la paciente."

* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^status = #draft
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* medication[x] 1..1 MS
* medication[x] only CodeableConceptIPS or Reference(Medicamento-embarazos-cl-ips)
* medication[x] from VSMedicamentos (preferred)
* medication[x] ^definition = "Identifica la medicación que se está administrando o el motivo de ausencia o desconocimiento de la medicación. Se trata de un enlace a un recurso que representa los detalles de la medicación o de un simple atributo que contiene un código. Para mejorar la interoperabilidad global se recomienda encarecidamente que se utilice la referencia a un recurso de medicación, limitando el uso de medicationCodeableConcept únicamente a los casos en los que no se disponga de más información que un simple código."
* medication[x] ^binding.description = "SNOMED CT medicamentos (Producto farmacéutico / biológico) o un código para medicamento ausente/desconocido"

* subject 1..1 MS
* subject only Reference(PacienteEmbCL)

* effective[x] 1..1 MS
