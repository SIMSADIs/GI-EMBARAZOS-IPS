Profile: PrestadorEmbCL
Parent: PrestadorClIps
Id: Prestador-embarazo-cl-ips
Title: "Prestador Individual (Embarazo-CL)"
Description: "Perfil del prestador basado en la IPS chilena. Este perfil restringe el recurso Prestador para representar un profesional de la salud que actúa como observador de resultados expresados. Es un profesional ligado a la atención de pacientes embarazadas (o dependiendo de su estado)."

* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^status = #draft
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* name 1..1 MS
* name.family 1..1 MS
* name.given 1..* MS
