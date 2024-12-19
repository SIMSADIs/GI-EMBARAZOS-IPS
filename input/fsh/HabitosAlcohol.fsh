Profile: ConsumoAlcoholEmbCL
Parent: ObservationUsoAlcoholClIps
Id: Consumo-alcohol-cl-ips
Title: "Hábitos: Consumo de Alcohol (Embarazo-CL)"
Description: "Perfil de hábitos basado en la IPS chilena. Este perfil restringe el recurso Observación para representar el consumo de alcohol diario o semanal por parte de la paciente."

* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^status = #draft
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* subject 1..1 MS
* subject only Reference(PacienteEmbCL)

* valueQuantity 0..1
* valueQuantity only QuantityIPS
* valueQuantity from VSUCUM (preferred)
* valueQuantity ^sliceName = "valueQuantity"