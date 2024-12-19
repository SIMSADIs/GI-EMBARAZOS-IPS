Profile: ProcedimientosEmbCL
Parent: ProcedimientosClIps
Id: Procedimientos-embarazo-cl-ips
Title: "Procedimientos (Embarazo-CL)"
Description: "Perfil de antecedentes quirúrgicos y obstétricos basado en la IPS chilena. Este perfil restringe el recurso Procedimientos para representar antecedentes quirúrgicos y/u obstétricos por los que haya pasado la paciente.

El tipo de procedimiento se clasifica de acuerdo a la categoría a la que pertenece (Quirúrgico u Obstétrico)."

* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^status = #draft
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
//SE ELIMINO LA EXTENSION PARA DETALLES DE PROCEDIMIENTO DEJANDO NOTE
* subject 1..1 MS
* subject only Reference(PacienteEmbCL)

* code 1..1 MS
* code only CodeableConceptIPS
* code from VSProcedimientos (preferred)

* category 0..1 MS
* category only CodeableConceptIPS
* category from VSCatProc (preferred)

* performed[x] 1..1 MS
* performed[x] only dateTime
* asserter only Reference(PacienteEmbCL or RelatedPerson or PrestadorEmbCL or CoreRolClinicoCl)
* performer
  * actor only Reference(PacienteEmbCL or RelatedPerson or PrestadorEmbCL or RolPrestadorEmbCL or OrganizacionEmbCL)
  * onBehalfOf only Reference(OrganizacionEmbCL)

* note 0..*
* note  ^short = "Información/Detalles adicionales del procedimiento que se realizó la paciente con anterioridad, en caso de haberse realizado uno."