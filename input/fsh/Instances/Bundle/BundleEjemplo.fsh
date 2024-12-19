Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
Alias: ucum = http://unitsofmeasure.org
Alias: CSIntent = http://hl7.org/fhir/request-intent
Alias: CSTipoIdentificador = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador
Alias: CSConsent = http://terminology.hl7.org/CodeSystem/consentscope
Alias: CSallergy = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical
Alias: CSallergyver = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification
Alias: CSAtc = http://www.whocc.no/atc
Alias: CScondition = http://terminology.hl7.org/CodeSystem/condition-clinical

Instance:    Bundle-Emb-Ejemplo
InstanceOf:  BundleDocumentoEmbCL
Usage:       #example
Title:       "Bundle - Ejemplo"
Description: "Ejemplo sobre un Bundle de tipo documento clínico que representa el conjunto mínimo de datos para el Resumen Clínico de Pacientes Embarazadas a partir de IPS-CL."

* meta.profile = "https://hl7chile.cl/fhir/ig/clembarazos/StructureDefinition/BundleEmb-documento-ips-cl"
* identifier.system = "urn:oid:2.16.152.1.10.1" //identificador ficticio del documento; el OID 2.16.152.1 es del MINSAL, para identificar a Chile
* identifier.value = "Document-Bundle-2024-001"

* type = #document //Tipo de bundle, en este caso es un documento

* timestamp = "2024-12-03T13:00:00.000-04:00" //instante de tiempo; fecha de creación del documento

//composition
* entry[0].fullUrl = "urn:uuid:1637493f-e222-4005-ac6b-17e7d17122e0" //URI para identificar el recurso composition dentro del bundle (se generó aleatoreamente)
* entry[=].resource = 1637493f-e222-4005-ac6b-17e7d17122e0
//patient
* entry[+].fullUrl = "urn:uuid:6e251b4d-1ed9-48b9-850a-138d9849507c"
* entry[=].resource = 6e251b4d-1ed9-48b9-850a-138d9849507c
//prestador
* entry[+].fullUrl = "urn:uuid:503a0267-1cfd-44cc-a382-e052a78fa5cc"
* entry[=].resource = 503a0267-1cfd-44cc-a382-e052a78fa5cc
//organizacion
* entry[+].fullUrl = "urn:uuid:e80c16ae-eec7-4ff7-99c4-27e756ace6fa"
* entry[=].resource = e80c16ae-eec7-4ff7-99c4-27e756ace6fa
//Medication Statement
* entry[+].fullUrl = "urn:uuid:f6759f7e-630f-400e-bbe2-c8378fa6a1a5"
* entry[=].resource = f6759f7e-630f-400e-bbe2-c8378fa6a1a5
//Medicamento
* entry[+].fullUrl = "urn:uuid:edbe2197-1ead-44d3-b572-4b26de4fb427"
* entry[=].resource = edbe2197-1ead-44d3-b572-4b26de4fb427
//Prescripción Medicamento
* entry[+].fullUrl = "urn:uuid:b16e76cc-8ee5-4ede-9dc9-7329aa49292c"
* entry[=].resource = b16e76cc-8ee5-4ede-9dc9-7329aa49292c
//Alergias
* entry[+].fullUrl = "urn:uuid:4383be84-d431-47e1-85e7-80d995742514"
* entry[=].resource = 4383be84-d431-47e1-85e7-80d995742514
//problemas
* entry[+].fullUrl = "urn:uuid:fd5676b3-0011-49a3-9c21-d1bd8458f350"
* entry[=].resource = fd5676b3-0011-49a3-9c21-d1bd8458f350
//Procedimientos
* entry[+].fullUrl = "urn:uuid:44f4b385-d48d-4a7b-8959-3b87f3b23ebe"
* entry[=].resource = 44f4b385-d48d-4a7b-8959-3b87f3b23ebe
//Estado Embarazo
* entry[+].fullUrl = "urn:uuid:ea4b4cb7-d449-4b7e-978c-2a446bd547b1"
* entry[=].resource = ea4b4cb7-d449-4b7e-978c-2a446bd547b1
//Resultados Embarazo
* entry[+].fullUrl = "urn:uuid:76555e43-8a81-4821-92aa-cab7c57010f0"
* entry[=].resource = 76555e43-8a81-4821-92aa-cab7c57010f0
//Fecha Estimada de Parto
* entry[+].fullUrl = "urn:uuid:660b0997-ec98-4981-92ee-bd7b5d44d215"
* entry[=].resource = 660b0997-ec98-4981-92ee-bd7b5d44d215
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Instance: 1637493f-e222-4005-ac6b-17e7d17122e0
InstanceOf: Composition
Usage: #inline

* status = #final

* type
  * coding = loinc#60591-5 "Patient summary Document"
  * text = "Documento resumen de paciente embarazada"

* subject = Reference(urn:uuid:6e251b4d-1ed9-48b9-850a-138d9849507c)

* date = "2024-12-03" //tiempo de edición del documento
//prestador
* author = Reference(urn:uuid:503a0267-1cfd-44cc-a382-e052a78fa5cc)

* title = "Resumen Clínico de Pacientes Embarazadas - Chile"
//organizacion
* custodian = Reference(urn:uuid:e80c16ae-eec7-4ff7-99c4-27e756ace6fa) //organizacion que mantiene el documento

* relatesTo.code = #appends //este documento agrega informacion adicional al documento de destino

//un OID es un identificador para estándares, en este caso FHIR. los 1ros numeros representan el país, el resto representa una institucion
* relatesTo.targetIdentifier.system = "urn:oid:2.16.152.1.10.1" //identificador ficticio; el OID 2.16.152.1 es del MINSAL, para identificar a Chile
* relatesTo.targetIdentifier.value = "ResumenEmbarazos-CL-2024-001"

* section[0].title = "Medicamentos"
* section[=].code.coding.system = loinc
* section[=].code.coding.code = #10160-0
* section[=].code.coding.display = "History of medication use Narrative"
* section[=].code.text = "Historial de uso de medicamentos"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li><div><b>Medication Name</b>: Calcio (medicamento)</div><div><b>Code</b>: <span>7947003</span></div><div><b>Status</b>: <span>active, started 2024-08-03</span></div><div>Instructions: Administrar 200 mg por día</div></li></ul></div>"
* section[=].entry[0] = Reference(urn:uuid:f6759f7e-630f-400e-bbe2-c8378fa6a1a5)
* section[=].entry[+] = Reference(urn:uuid:b16e76cc-8ee5-4ede-9dc9-7329aa49292c)

* section[+].title = "Alergias"
* section[=].code.coding.system = loinc
* section[=].code.coding.code = #48765-2
* section[=].code.coding.display = "Allergies and adverse reactions Document"
* section[=].code.text = "Documento de alergias y reacciones adversas"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li><div><b>Allergy Name</b>: Hierro</div><div><b>Verification Status</b>: Confirmado</div><div><b>Reaction</b>: <span>Anafilaxia</span></div></li></ul></div>"
* section[=].entry = Reference(urn:uuid:4383be84-d431-47e1-85e7-80d995742514)

* section[+].title = "Problemas de salud - Condiciones"
* section[=].code.coding.system = loinc
* section[=].code.coding.code = #11450-4
* section[=].code.coding.display = "Problem list - Reported"
* section[=].code.text = "Lista de problemas"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li><div><b>Condition Name</b>: Obesidad</div><div><b>Code</b>: <span>414916001</span></div><div><b>Status</b>: <span>active</span></div></li></ul></div>"
* section[=].entry = Reference(urn:uuid:fd5676b3-0011-49a3-9c21-d1bd8458f350)

* section[+].title = "Observación: Embarazo"
* section[=].code.coding.system = loinc
* section[=].code.coding.code = #10162-6
* section[=].code.coding.display = "History of pregnancies Narrative"
* section[=].code.text = "Historia de los embarazos"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">La paciente presentó un estado de embarazo positivo (Embarazada) el día 03 de marzo del presente año. Como resultado, se obtuvo que tiene un hijo.</div>"
* section[=].entry[0] = Reference(urn:uuid:ea4b4cb7-d449-4b7e-978c-2a446bd547b1) //Estado Embarazo
* section[=].entry[+] = Reference(urn:uuid:76555e43-8a81-4821-92aa-cab7c57010f0) //Resultados Embarazo

* section[+].title = "Procedimientos"
* section[=].code.coding.system = loinc
* section[=].code.coding.code = #47519-4
* section[=].code.coding.display = "History of Procedures Document"
* section[=].code.text = "Documento sobre Historia de Procedimientos"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">La paciente se realizó una cesárea categorizada como procedimiento obstétrico el día 26 de noviembre del presente año.</div>"
* section[=].entry = Reference(urn:uuid:44f4b385-d48d-4a7b-8959-3b87f3b23ebe)

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Instance: 503a0267-1cfd-44cc-a382-e052a78fa5cc
InstanceOf: Practitioner
Usage: #inline

* meta.profile = "https://hl7chile.cl/fhir/ig/clembarazos/StructureDefinition/Prestador-embarazo-cl-ips"

//Identificación por Cédula Chilena
* identifier.use = #official
* identifier.value = "15325467-k"
* identifier.type.coding.system = CSTipoIdentificador
* identifier.type.coding.code = #01
* identifier.type.coding.display = "RUN"

//Nombre Prestador
* name.use = #official
* name.family = "Zuñiga"
* name.given = "Bernarda"
* name.given[1] = "Antonella"

* telecom.system = #email
* telecom.use = #work
* telecom.value = "Bernarda.antonellaCesfam@hotmail.com"
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Instance: e80c16ae-eec7-4ff7-99c4-27e756ace6fa
InstanceOf: Organization
Usage: #inline

* meta.profile = "https://hl7chile.cl/fhir/ig/clembarazos/StructureDefinition/Organizacion-embarazo-cl-ips"
* identifier.system = "https://datos.gob.cl/dataset/establecimientos-de-salud-vigentes/resource/2c44d782-3365-44e3-aefb-2c8b8363a1bc" //Corresponde al sistema en el cual se encuentran registrados los centros de salud vigentes
* identifier.value = "106302" //id del centro de salud (en este caso es el cesfam barón)

* name = "Centro de Salud Familiar Barón"
* alias = "CESFAM Barón"

* telecom.system = #email //telefono de contacto con la organizacion
* telecom.use = #work
* telecom.value = "cesfam.baron@gmail.com"
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Instance: 6e251b4d-1ed9-48b9-850a-138d9849507c
InstanceOf: Patient
Usage: #inline

* meta.profile = "https://hl7chile.cl/fhir/ig/clembarazos/StructureDefinition/Paciente-embarazo-cl-ips"

* identifier.use = #official    // Obligado
* identifier.type.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodigoDNI"
* identifier.type.coding.code = #NNCHL
* identifier.type.coding.display = "Chile"

// Extensión para el País de Emisión del Documento
* identifier.type.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* identifier.type.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* identifier.type.extension.valueCodeableConcept.coding.code = #152
* identifier.type.extension.valueCodeableConcept.coding.display = "Chile"

// Definir el sistema y valor del identificador
* identifier.system = "http://regcivil.cl/Validacion/RUN"
* identifier.value = "14.241.432-8" //38 años app

* active = true //Registro activo

//Nombre Oficial
* name.use = #official
* name.family = "Henriquez"
//* name[NombreOficial].family.extension[segundoApellido] = SegundoApellidoPacienteCL
* name.given[0] = "Susana"
* name.given[+] = "Mercedes"

//nombre social
//* name.use = #usual
//* name.given = "Susy"

* extension.url = edad
* extension.valueInteger = 38

* telecom.system = #phone
* telecom.use = #mobile
* telecom.value = "932785678"

* gender = #female
* birthDate = "1995-05-01"

//Address
* address.use = #home
* address.line[0] = "Av. General Vidaurre, casa 84 G"

// Ciudad (Comuna)
* address.city = "Valparaíso"

// Extensión de comuna
* address.city.extension[0].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
* address.city.extension[0].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL"
* address.city.extension[0].valueCodeableConcept.coding.code = #05101  // Código para Valparaiso
* address.city.extension[0].valueCodeableConcept.coding.display = "Valparaíso"

// Región
* address.state = "Valparaíso"

// Extensión de región
* address.state.extension[0].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension[0].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL"
* address.state.extension[0].valueCodeableConcept.coding.code = #05  // Código para Región Valparaiso
* address.state.extension[0].valueCodeableConcept.coding.display = "Valparaíso"

// País
* address.country = "Chile"

// Extensión de país
* address.country.extension[0].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* address.country.extension[0].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* address.country.extension[0].valueCodeableConcept.coding.code = #152  // Código para Chile
* address.country.extension[0].valueCodeableConcept.coding.display = "Chile"

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Instance: f6759f7e-630f-400e-bbe2-c8378fa6a1a5
InstanceOf: MedicationStatement
Usage: #inline

* meta.profile = "https://hl7chile.cl/fhir/ig/clembarazos/StructureDefinition/Uso-de-medicamentos-cl-ips"

* status = #active

* medicationReference = Reference(urn:uuid:edbe2197-1ead-44d3-b572-4b26de4fb427)
* medicationReference.display = "Tableta de calcio"

* subject = Reference(urn:uuid:6e251b4d-1ed9-48b9-850a-138d9849507c)
* effectivePeriod.start = "2024-08-03" //comenzó con el uso de tabletas durante junio
//* effectivePeriod.end = "2019-02-07"

* dosage.text = "Administrar 200 mg/día"
* dosage.timing.repeat.frequency = 1 //con que frecuencia ocurre el evento: el tratamiento es una vez
* dosage.timing.repeat.period = 1 //con que frecuencia ocurre el evento: un día; seria una vez al día
* dosage.timing.repeat.periodUnit = #d //unidad de medida de la frecuencia

* dosage.doseAndRate.doseQuantity = 200 ucum#mg "mg" //cantidad de medicamento administrado

* dosage.route
  * coding = EDQM#20002500 "Buccal use"
  * text = "Vía de administración bucal"

* note.text = """
### NOTA:
Administrar una tableta por día a partir de las 20 semanas hasta el final de la gestación.
"""

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Instance: edbe2197-1ead-44d3-b572-4b26de4fb427
InstanceOf: Medication
Usage: #inline

* meta.profile = "https://hl7chile.cl/fhir/ig/clembarazos/StructureDefinition/Medicamento-embarazos-cl-ips"

* language = #es

* status = #active

* extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/NombreComercial"
* extension.valueString = "Calcio"

* code.coding[0] = snomed#767113005 "Product containing calcium (medicinal product)"
* code.coding[=].display.extension.extension[0].url = "lang"
* code.coding[=].display.extension.extension[=].valueCode = #es
* code.coding[=].display.extension.extension[+].url = "content"
* code.coding[=].display.extension.extension[=].valueString = "Calcio (medicamento)"
* code.coding[=].display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"

* code.text = "Calcio (medicamento)"

* form
  * coding = EDQM#10219000 "Tablet" //En que forma se proporciona el medicamento, en este caso es en formato tableta
  * text = "Tableta"

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Instance: b16e76cc-8ee5-4ede-9dc9-7329aa49292c
InstanceOf: MedicationRequest
Usage: #inline

* status = #completed

* intent = #original-order

* requester = Reference(urn:uuid:503a0267-1cfd-44cc-a382-e052a78fa5cc)

* medicationReference = Reference(urn:uuid:edbe2197-1ead-44d3-b572-4b26de4fb427)
* medicationReference.display = "Tableta de Calcio"

* subject = Reference(urn:uuid:6e251b4d-1ed9-48b9-850a-138d9849507c) //Para quien es la prescripción de medicacion

//Son las instrucciones sobre cómo se debe tomar el medicamento
* dosageInstruction.text = "Administrar 200 mg por día hasta el final de la gestación." //instrucciones de dosificacion
* dosageInstruction.timing.repeat.frequency = 1 //Instrucciones: con que frecuencia ocurre el evento: una vez al día
* dosageInstruction.timing.repeat.period = 1 //Instrucciones: con que frecuencia ocurre el evento: día; seria una vez al día por día
* dosageInstruction.timing.repeat.periodUnit = #d //unidad de medida de la frecuencia
* dosageInstruction.doseAndRate.doseQuantity = 200 ucum#mg "mg" //permite definir la dosis y su frecuencia o velocidad de administracion

* dosageInstruction
  * route
    * coding = EDQM#20002500 "Buccal use"
    * text = "Vía de administración bucal"

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Instance: 4383be84-d431-47e1-85e7-80d995742514
InstanceOf: AllergyIntolerance
Usage: #inline

* meta.profile = "https://hl7chile.cl/fhir/ig/clembarazos/StructureDefinition/Alergias-embarazo-cl-ips"

* clinicalStatus
  * coding = CSallergy#active "Active"
  * text = "Activo"

* verificationStatus
  * coding = CSallergyver#confirmed "Confirmed"
  * text = "Confirmado"

* type = #allergy

* criticality = #high

* code
  //* coding[0] = snomed#3829006 "Iron"
  * coding = snomed#3829006 "Iron"
  * text = "Hierro"

* patient = Reference(urn:uuid:6e251b4d-1ed9-48b9-850a-138d9849507c) //Para quien es la prescripción de medicacion

* onsetAge.value = 15
* onsetAge.system = ucum
* onsetAge.code = #a
* onsetAge.unit = "años"

* recorder = Reference(urn:uuid:503a0267-1cfd-44cc-a382-e052a78fa5cc) //es quien registro la alergia

* reaction
  * manifestation
    * coding = snomed#39579001 "Anaphylaxis"
    * text = "Anafilaxia"

* note.text = """
### NOTA:
El cuadro clínico que suele presentar la paciente ante la exposición a Hierro es **intenso picor en manos y cuero cabelludo.**
Además, presenta **taquitardia y dificultad respiratoria.**
"""
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Instance: fd5676b3-0011-49a3-9c21-d1bd8458f350
InstanceOf: Condition
Usage: #inline

* meta.profile = "https://hl7chile.cl/fhir/ig/clembarazos/StructureDefinition/Condicion-de-salud-cl-ips"

* clinicalStatus //estado de la condicion del paciente, en este caso se encuentra activa
  * coding = CScondition#active "Active"
  * text = "Activa"

* category //categoria de la condicion, en este caso es un problema
  * coding = loinc#75326-9 "Problem"
  * text = "Problema"

* code //codigo de la condicion clinica
  * coding = snomed#414916001 "Obesity"
  * text = "Obesidad"

* severity //grado de severidad de la condicion
  * coding = snomed#6736007 "Moderate severity"
  * text = "Moderado"

* subject = Reference(urn:uuid:6e251b4d-1ed9-48b9-850a-138d9849507c)

* onsetPeriod.start = "2023-10-30" //periodo de inicio de la condicion

* asserter = Reference(urn:uuid:503a0267-1cfd-44cc-a382-e052a78fa5cc)

* note.text = """
### NOTA:
La paciente durante su post parto anterior presentó hipertensión arterial, dada su condición de salud.
"""
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Instance: 44f4b385-d48d-4a7b-8959-3b87f3b23ebe
InstanceOf: Procedure
Usage: #inline

* meta.profile = "https://hl7chile.cl/fhir/ig/clembarazos/StructureDefinition/Procedimientos-embarazo-cl-ips"

* status = #completed //completado

* code
  * coding = snomed#11466000 "Cesarean section" //procedimiento
  * text = "Cesárea"

* category
  * coding = snomed#386637004 "Obstetric procedure (procedure)" //procedimiento categoria
  * text = "Procedimiento obstétrico"

* subject = Reference(urn:uuid:6e251b4d-1ed9-48b9-850a-138d9849507c) //Quien se hizo el procedimiento

* performedDateTime = "2024-11-26"

* note.text = """
### NOTA:
La paciente se realizó el procedimiento obstétrico de cesárea con fecha 03 de diciembre del presente año. En este caso, la fecha representa la fecha de nacimiento del bebé.
"""
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Instance: ea4b4cb7-d449-4b7e-978c-2a446bd547b1
InstanceOf: Observation
Usage: #inline

* meta.profile = "https://hl7chile.cl/fhir/ig/clembarazos/StructureDefinition/Estado-del-embarazo-cl-ips"

* status = #final

* code
  * coding = loinc#82810-3 "Pregnancy status"
  * text = "Estado de embarazo"

* subject = Reference(urn:uuid:6e251b4d-1ed9-48b9-850a-138d9849507c)
* effectiveDateTime = "2024-03-03" //momento en el que se afirma que el valor es verdadero
* performer = Reference(urn:uuid:503a0267-1cfd-44cc-a382-e052a78fa5cc)

* valueCodeableConcept
  * coding = snomed#77386006 "Pregnancy"
  * text = "Embarazada"

* hasMember = Reference(urn:uuid:660b0997-ec98-4981-92ee-bd7b5d44d215)

* note.text = """
### NOTA:
El estado de embarazo positivo se dió el día 03 de marzo del 2024.
"""
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Instance: 76555e43-8a81-4821-92aa-cab7c57010f0
InstanceOf: Observation
Usage: #inline

* meta.profile = "https://hl7chile.cl/fhir/ig/clembarazos/StructureDefinition/Resultados-de-embarazos-cl-ips"

* status = #final

* code
  * coding = loinc#11640-0 "[#] Births total"
  * text = "[#] Nacimientos totales"

* subject = Reference(urn:uuid:6e251b4d-1ed9-48b9-850a-138d9849507c)
* effectiveDateTime = "2022-08-18"
* performer = Reference(urn:uuid:503a0267-1cfd-44cc-a382-e052a78fa5cc)

* valueQuantity.value = 1
* valueQuantity.unit = "hijo"
* valueQuantity.system = ucum
* valueQuantity.code = #1 //se refiere al numero de nacimientos totales segun el codigo de arriba

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Instance: 660b0997-ec98-4981-92ee-bd7b5d44d215
InstanceOf: Observation
Usage: #inline

* meta.profile = "https://hl7chile.cl/fhir/ig/clembarazos/StructureDefinition/Fecha-estimada-de-parto-cl-ips"

* status = #final

* code
  * coding = loinc#11779-6 "Delivery date Estimated from last menstrual period"
  * text = "Fecha estimada de parto a partir del último periodo menstrual (FUR Operacional)"

* subject = Reference(urn:uuid:6e251b4d-1ed9-48b9-850a-138d9849507c)

* effectiveDateTime = "2024-05-05"

* performer = Reference(urn:uuid:503a0267-1cfd-44cc-a382-e052a78fa5cc)

* valueDateTime = "2024-11-26" //corresponde a la fecha estimada de parto segun el prestador

* note.text = """
### NOTA: Se realizó una ecografía el día 05 de mayo (durante el primer trimestre) a la paciente para determinar la fecha de última regla de
de manera más precisa (FUR Operacional). Por lo tanto, la fecha estimada de parto es en noviembre de este año.
"""