Profile: ConsumoDrogasDurasyBlandasEmbCL
Parent: ObservationUsoTabacoClIps
Id: Consumo-drogas-duras-y-blandas-cl-ips
Title: "Hábitos: Consumo de drogas duras y blandas (Embarazo-CL)"
Description: "Perfil de hábitos basado en la IPS chilena. Este perfil restringe el recurso Observación para representar el consumo de drogas blandas y/o duras por parte de la paciente.

Las drogas blandas hacen referencia a todas aquellas que no se consideran tan adictivas y menos perjudiciales para la salud del paciente, tales como el tabaco y cannabis. Mientras que, las drogas duras, tienen un alto potencial adictivo y son mucho más dañinas."

* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^status = #draft
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* subject 1..1 MS
* subject only Reference(PacienteEmbCL)

* valueCodeableConcept 1..1
* valueCodeableConcept only CodeableConceptIPS
* valueCodeableConcept from VSDrogasBlandasYDuras (preferred)
* valueCodeableConcept ^sliceName = "valueCodeableConcept"