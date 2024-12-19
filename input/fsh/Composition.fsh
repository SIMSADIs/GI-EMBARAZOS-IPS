Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm
Alias: loinc = http://loinc.org
Alias: $v3-ActClass = http://terminology.hl7.org/CodeSystem/v3-ActClass
Alias: $clinicaldocument = http://hl7.org/fhir/StructureDefinition/clinicaldocument
Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
Alias: $Patient-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Alias: $MedicationStatement-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips
Alias: $MedicationRequest-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationRequest-uv-ips
Alias: $AllergyIntolerance-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips
Alias: $Condition-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips
Alias: $Procedure-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Procedure-uv-ips
Alias: $Immunization-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips
Alias: $DeviceUseStatement-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/DeviceUseStatement-uv-ips
Alias: $Observation-results-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-uv-ips
Alias: $DiagnosticReport-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/DiagnosticReport-uv-ips
Alias: $vitalsigns = http://hl7.org/fhir/StructureDefinition/vitalsigns
Alias: $Observation-tobaccouse-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-tobaccouse-uv-ips
Alias: $Observation-alcoholuse-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-alcoholuse-uv-ips
Alias: $Observation-pregnancy-status-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-status-uv-ips
Alias: $Observation-pregnancy-outcome-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-outcome-uv-ips
Alias: $Flag-alert-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Flag-alert-uv-ips

Profile: CompositionEmbCL
Parent: DocumentoClIps
Id: CompositionEmb-cl-ips
Title: "Documento - Composition (Embarazo-CL)"
Description: """Documento clínico utilizado para representar el conjunto de datos del Resumen de Pacientes Embarazadas a nivel nacional a partir del Resumen Internacional de Paciente (IPS) - Chile.
Un documento de Resumen de Datos Clínicos de Pacientes Embarazadas es un extracto de historia clínica electrónica que contiene información sanitaria esencial sobre la paciente y su estado actual.
El conjunto de datos es mínimo y no exhaustivo; independiente de la especialidad y la afección; pero sigue siendo clínicamente relevante. Está diseñado para apoyar el caso de uso de la «atención transfronteriza no planificada», pero no se limita a él. Este pretende ser utilizado para su aplicación global más allá de una región o país concretos, ya sea para una paciente embarazada que llega al país o para una paciente que sale del país o región particular.

El Composition proporciona la narrativa necesaria para que el documento clínico sea legible y comprensible. Además, proporciona los metadatos del documento."""

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[=].valueInteger.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueInteger.extension.valueCanonical = "https://hl7chile.cl/fhir/ig/clembarazos/ImplementationGuide/hl7.fhir.cl.clembarazos"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft
* ^extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueCode.extension.valueCanonical = "https://hl7chile.cl/fhir/ig/clembarazos/ImplementationGuide/hl7.fhir.cl.clembarazos"

* ^version = "0.1.0"
* ^status = #draft
* ^experimental = false
* ^publisher = "HL7 Chile"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* ^copyright = "HL7 International"

* . ^short = "Resumen de Pacientes Embarazadas - Documento"
* . ^definition = "Resumen de Pacientes Embarazadas documento. \r\nUna composición es un conjunto de información relacionada con la asistencia sanitaria que se ensambla en un único documento lógico que proporciona una única declaración coherente de significado, establece su propio contexto y que tiene atestación clínica con respecto a quién realiza la declaración. \r\nAunque una composición define la estructura, en realidad no contiene el contenido: el contenido completo de un documento se encuentra en un paquete, cuyo primer recurso es la composición."
* text MS
* identifier MS
* status MS
* type only CodeableConceptIPS
* type = loinc#60591-5
* type MS
* type ^short = "Tipo de Documento (\"Resumen de Paciente\")"
* type ^definition = "Especifica que el documento refiere al Resumen de Paciente (Loinc \"60591-5\")\r\n"
* subject 1.. MS
* subject only Reference(PacienteEmbCL)
* subject ^definition = "Sobre quién o que es el documento. \r\nEn general, una composición puede referirse a una persona (paciente o profesional sanitario), a un dispositivo (por ejemplo, una máquina) o incluso a un grupo de sujetos (como un documento sobre un rebaño de ganado o un conjunto de pacientes que comparten una exposición común).\r\nPara esta guía de resumen de embarazos, el sujeto es siempre la paciente."
* date MS
* author MS
* author ^short = "Quién y/o qué fue el autor del Resumen Clínico de Embarazos"
* author ^definition = "Identifica al responsable de la información en el documento, no necesariamente a quien la ingresó.\r\n\r\nEl tipo de autor, de manera de determinar la \"naturaleza\"del resumen de paciente: e.g. a \"Datos curativos\" resumen Vs. uno generado \"automaticamente\"."
* title MS
* title ^short = "Resumen Clínico de Pacientes Embarazadas para uso en Chile"
* title ^definition = "Etiqueta oficial de lectura humana para el documento.\r\n\r\nPara este documento debiera ser \"Resumen Clínico de Pacientes Embarazadas Basado en IPS\""
* attester MS
* attester.mode MS
* attester.time MS
* attester.party MS
* custodian MS
* relatesTo.target[x] only Identifier or Reference(Composition or CompositionEmbCL)

* section 3.. MS

* section ^short = "Secciones que componen el Resumen de Embarazos"
* section ^definition = "Las secciones raíz que componen el documento de Resumen de Embarazos."


//* section[sectionMedicamentos] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
//* section[sectionMedicamentos] ^extension[=].valueString = "Sección"
* section[sectionMedicamentos] ^short = "Sección de Resumen de Medicamentos - Embarazos"
* section[sectionMedicamentos] ^definition = "La sección de resumen de medicación contiene una descripción de los medicamentos de la paciente relevantes para el ámbito del resumen de la paciente.\r\nSe puede reportar:\r\n- Medicamentos activos; \r\n- medicamentos usados actualmente o usados anteriormente considerados relevantes para el autor.\r\n\r\nEn esos casos, los medicamentos se documentan en el Resumen del Paciente como declaraciones de medicación.\r\nEsta sección requiere o bien una entrada que indique que se sabe que el sujeto no toma ninguna medicación relevante; o bien una entrada que indique que no se dispone de información sobre medicaciones; o bien entradas que resuman las medicaciones relevantes del sujeto."
* section[sectionMedicamentos].title 1.. MS
* section[sectionMedicamentos].title ^short = "Sección de Resumen de Medicamentos"
* section[sectionMedicamentos].title ^definition = "Título de la sección específica.  Será parte de la renderización para uso dentro de la la tabla de contenidos.\r\n\r\nResumen de Medicamento."
* section[sectionMedicamentos].code = loinc#10160-0
* section[sectionMedicamentos].entry 1.. MS
* section[sectionMedicamentos].entry ^slicing.discriminator[0].type = #profile
* section[sectionMedicamentos].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionMedicamentos].entry ^slicing.rules = #open
* section[sectionMedicamentos].entry ^short = "Medicamentos relevantes para la salud del paciente"
* section[sectionMedicamentos].entry ^definition = "Esta lista los medicamentos relevantes para el ámbito del resumen del paciente o se utiliza para indicar que se sabe que el sujeto no toma ninguna medicación relevante; o bien que no se dispone de información sobre medicamentos."
* section[sectionMedicamentos].entry[listMedicamentos] only Reference(UsoDeMedicamentoCL)
* section[sectionMedicamentos].entry[prescripciones] only Reference(PrescripcionEmbClIps)

//* section[sectionAlergias] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
//* section[sectionAlergias] ^extension[=].valueString = "Sección"
* section[sectionAlergias] ^short = "Sección de Alergias e Intolerancias"
* section[sectionAlergias] ^definition = "Esta sección documenta las alergias o intolerancias (afecciones) relevantes para ese paciente, describiendo el tipo de reacción (por ejemplo, erupción cutánea, anafilaxia, etc.); preferiblemente los agentes que la causan; y opcionalmente la criticidad y la certeza de la alergia."
* section[sectionAlergias].title 1.. MS
* section[sectionAlergias].code = loinc#48765-2
* section[sectionAlergias].entry 1.. MS
* section[sectionAlergias].entry ^slicing.discriminator[0].type = #profile
* section[sectionAlergias].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionAlergias].entry ^slicing.rules = #open
* section[sectionAlergias].entry ^short = "Alergias o intolerancias (afecciones) relevantes para ese paciente."
* section[sectionAlergias].entry ^definition = "Enumera las alergias o intolerancias (afecciones) relevantes para ese paciente, describiendo el tipo de reacción (por ejemplo, erupción cutánea, anafilaxia,..); preferiblemente los agentes que la causan; y opcionalmente la criticidad y la certeza de la alergia.\r\nComo mínimo, debe enumerar las alergias y reacciones adversas actualmente activas y cualquier historial relevante.\r\nEsta entrada se utilizará para documentar que no se dispone de información sobre alergias, o que no se conocen alergias"
* section[sectionAlergias].entry[alergias] only Reference(AlergiasEmbCL)

//* section[sectionProblemas] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
//* section[sectionProblemas] ^extension[=].valueString = "Sección"
* section[sectionProblemas] ^short = "Problemas de Salud"
* section[sectionProblemas] ^definition = "La sección de problemas del IPS enumera y describe los problemas o condiciones clínicas que se están controlando actualmente para el paciente."
* section[sectionProblemas].title 1.. MS
* section[sectionProblemas].code = loinc#11450-4
* section[sectionProblemas].entry 1.. MS
* section[sectionProblemas].entry ^slicing.discriminator[0].type = #profile
* section[sectionProblemas].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionProblemas].entry ^slicing.rules = #open
* section[sectionProblemas].entry ^short = "Problemas o afecciones clínicas que se están controlando actualmente en la paciente."
* section[sectionProblemas].entry ^definition = "Enumera y describe los problemas o afecciones clínicas que se están controlando actualmente en la paciente. Esta entrada se utilizará para documentar que no se dispone de información sobre problemas o que no se conocen problemas relevantes."
* section[sectionProblemas].entry[problema] only Reference(CondicionSaludCL)

* section[sectionProcedimientos] 1..1
//* section[sectionProcedimientos] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
//* section[sectionProcedimientos] ^extension[=].valueString = "Sección"
* section[sectionProcedimientos] ^short = "Historial de Procedimientos"
* section[sectionProcedimientos] ^definition = "La sección Historial de procedimientos contiene una descripción de los procedimientos anteriores de la paciente que son pertinentes para el ámbito de este documento.\r\nComo por ejemplo:\r\n1. Procedimientos ginecológicos o procedimientos quirúrgicos relacionados al embarazo de la paciente."
* section[sectionProcedimientos].title 1.. MS
* section[sectionProcedimientos].code = loinc#47519-4
* section[sectionProcedimientos].entry 1.. MS
* section[sectionProcedimientos].entry ^slicing.discriminator[0].type = #profile
* section[sectionProcedimientos].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionProcedimientos].entry ^slicing.rules = #open
* section[sectionProcedimientos].entry ^short = "Procedimientos anteriores del paciente pertinentes para el ámbito de este documento."
* section[sectionProcedimientos].entry ^definition = "Enumera los procedimientos anteriores del paciente que son pertinentes para el ámbito de este documento. Procedimiento diagnóstico invasivo: por ejemplo, cateterismo cardíaco (los resultados de este procedimiento se documentan en la sección de resultados). Procedimiento terapéutico: p. ej. diálisis;\r\n3. Procedimiento quirúrgico: por ejemplo, apendicectomía. Esta entrada se utilizará para documentar que no se dispone de información sobre procedimientos anteriores, o que no se conocen procedimientos anteriores relevantes."
* section[sectionProcedimientos].entry[procedimiento] only Reference(ProcedimientosEmbCL)

//* section[sectionHistoricoHx] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
//* section[sectionHistoricoHx] ^extension[=].valueString = "Sección"
* section[sectionHistoricoHx] ^short = "Histórico de enfermedades"
* section[sectionHistoricoHx] ^definition = "La sección Historial de enfermedades anteriores contiene una descripción de las afecciones que la paciente padeció en el pasado."
* section[sectionHistoricoHx].title 1..
* section[sectionHistoricoHx].code = loinc#11348-0
* section[sectionHistoricoHx].entry 1..
* section[sectionHistoricoHx].entry ^slicing.discriminator[0].type = #profile
* section[sectionHistoricoHx].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionHistoricoHx].entry ^slicing.rules = #open
* section[sectionHistoricoHx].entry ^short = "Condiciones sufridas por el paciente en el pasado"
* section[sectionHistoricoHx].entry ^definition = "Contiene una descripción de las afecciones que sufrió la paciente en el pasado."
* section[sectionHistoricoHx].entry[pastProblem] only Reference(CondicionSaludCL)

//* section[sectionHistoriaSocial] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
//* section[sectionHistoriaSocial] ^extension[=].valueString = "Sección"
* section[sectionHistoriaSocial] ^short = "Historia Social"
* section[sectionHistoriaSocial] ^definition = "La sección de historia social contiene una descripción de los \"factores de estilo de vida\" u \"observaciones de estilo de vida\" relacionados con la salud de la paciente (e.j. Hábitos de fumar; consumo de alcohol; cosumo de drogas duras o blandas)."
* section[sectionHistoriaSocial].title 1..
* section[sectionHistoriaSocial].code = loinc#29762-2
* section[sectionHistoriaSocial].entry ^slicing.discriminator[0].type = #profile
* section[sectionHistoriaSocial].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionHistoriaSocial].entry ^slicing.rules = #open
* section[sectionHistoriaSocial].entry ^short = "Aspectos relacionados con salud \"factores de estilo de vida\" u \"observaciones asociadas a estilos de vida\" (e.j. Hábitos de fumar; consumo de alcohol; consumo de drogas duras o blandas.)"
* section[sectionHistoriaSocial].entry ^definition = "Descripción de los «factores de estilo de vida» relacionados con la salud de la persona\" u \"observaciones asociadas a estilos de vida\" (e.j. Hábitos de fumar; consumo de alcohol; consumo de drogas duras o blandas.)"
* section[sectionHistoriaSocial].entry contains
    DrogasDurasyBlandas 0..1
* section[sectionHistoriaSocial].entry[DrogasDurasyBlandas] only Reference(ConsumoDrogasDurasyBlandasEmbCL)
* section[sectionHistoriaSocial].entry[alcohol] only Reference(ConsumoAlcoholEmbCL)

* section[sectionEmbarazoHx] 1..1
//* section[sectionEmbarazoHx] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
//* section[sectionEmbarazoHx] ^extension[=].valueString = "Sección"
* section[sectionEmbarazoHx] ^short = "Historial de Embarazos"
* section[sectionEmbarazoHx] ^definition = "La sección de antecedentes de embarazo contendrá información sobre si la paciente está o no embarazada en la actualidad."
* section[sectionEmbarazoHx].title 1..
* section[sectionEmbarazoHx].code = loinc#10162-6
* section[sectionEmbarazoHx].entry ^slicing.discriminator[0].type = #profile
* section[sectionEmbarazoHx].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionEmbarazoHx].entry ^slicing.rules = #open
* section[sectionEmbarazoHx].entry ^short = "Estado actual del embarazo y, opcionalmente, información sobre resultados de embarazos anteriores."
* section[sectionEmbarazoHx].entry ^definition = "Contiene información sobre si la paciente está embarazada o no.\r\nPuede contener además información resumida sobre resultados de embarazos anteriores."
* section[sectionEmbarazoHx].entry[statusEmbarazo] only Reference(EstadoEmbarazoCL)
* section[sectionEmbarazoHx].entry[resultadoEmbarazo] only Reference(ResultadosEmbarazosCL)