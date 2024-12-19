Alias: $allergy-intolerance-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/allergy-intolerance-uv-ips
Alias: $allergy-reaction-snomed-ct-ips-free-set = http://hl7.org/fhir/uv/ips/ValueSet/allergy-reaction-snomed-ct-ips-free-set

Profile: AlergiasEmbCL
Parent: AlergiaIntClIps
Id: Alergias-embarazo-cl-ips
Title: "Alergias (Embarazo-CL)"
Description: "Perfil de alergias basado en la IPS chilena. Este perfil restringe el recurso Alergias para representar las alergias y/o intolerancias de la paciente."

* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^status = #draft
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* clinicalStatus 1..1 MS
* clinicalStatus  only CodeableConceptIPS
  * ^short = "Concepto - referencia a una terminología o sólo texto"
* clinicalStatus from 	http://hl7.org/fhir/ValueSet/allergyintolerance-clinical (required)

* verificationStatus only CodeableConceptIPS
  * ^short = "Concepto - referencia a una terminología o sólo texto"
* verificationStatus from http://hl7.org/fhir/ValueSet/allergyintolerance-verification (required)

* type 1..1 MS
* type from http://hl7.org/fhir/ValueSet/allergy-intolerance-type (required)

* code 1..1 MS
* code only CodeableConceptIPS
  * ^short = "Código relacionado a la sustancia o producto al cual la paciente tiene alergia o intolerancia."
* code from AllergyIntoleranceUvIps (preferred)

* patient 1..1 MS
* patient only Reference(PacienteEmbCL)

* criticality 1..1 MS
  * ^short = "Criticidad de acuerdo a una posible exposición futura."