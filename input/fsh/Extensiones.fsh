Extension: Edad
Id: Edad
Title: "Edad del paciente"
Description: "Proporciona la edad de la paciente"
Context: Patient

* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^status = #draft
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* . ^short = "Edad del paciente"
* . ^definition = "Proporciona la edad de la paciente"
* value[x] only integer
* value[x] MS
