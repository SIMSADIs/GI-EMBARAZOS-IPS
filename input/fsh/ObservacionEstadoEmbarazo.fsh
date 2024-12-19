Profile: EstadoEmbarazoCL
Parent: ObservationEstadoEmbarazoClIps
Id: Estado-del-embarazo-cl-ips
Title: "Estado del Embarazo (Embarazo-CL)"
Description: "Perfil de estado del embarazo basado en la IPS chilena. Este perfil restringe el recurso Observación para representar el estado en el que se encuentra la paciente, dependiendo de la observación.

El estado del embarazo hace referencia a si la paciente se encuentra o no embarazada, representa un posible embarazo o bien, embarazo no confirmado."

* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^status = #draft
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* subject 1..1 MS
* subject only Reference(PacienteEmbCL)

* valueCodeableConcept  1..1 MS
* valueCodeableConcept only CodeableConceptIPS
* valueCodeableConcept from PregnancyStatusUvIps (preferred)
* valueCodeableConcept ^sliceName = "valueCodeableConcept"

//SE ELIMINO LA EXTENSION DE SIGNOSYSINTOMAS DE LA PACIENTE PORQUE SE TIENE NOTE
* note 0..* 
* note ^short = "Información adicional en caso de que la paciente presente algún signo y/o síntoma de acuerdo a su estado, u otra información."