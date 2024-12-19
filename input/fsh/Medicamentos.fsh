Profile: MedicamentoCL
Parent: MedicamentoClIps
Id: Medicamento-embarazos-cl-ips
Title: "Medicamentos (Embarazo-CL)"
Description: "Perfil de medicamentos basado en la IPS chilena. Este perfil restringe el recurso Medicamento para representar los medicamentos que usa la paciente, en este caso, las vitaminas administradas."

* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^status = #draft
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* code 1..1 MS
* code only CodeableConceptIPS
 
* code from VSMedicamentos (preferred)
* code ^short = "Medicación administrada o que se iba a administrar la paciente durante su embarazo. Si el estado de su embarazo es desconocido, no embarazada o un posible embarazo, especificar que no consume medicamentos o si es que consume otro."

* status 1..1 MS