Instance:    Composition-Emb-Ejemplo
InstanceOf:  CompositionEmbCL
Usage:       #example
Title:       "Composition - Ejemplo"
Description: "Ejemplo sobre un documento clínico que representa un conjunto de datos para el Resumen Clínico de Pacientes Embarazadas a partir de IPS-CL."

* status = #final

* type
  * coding = loinc#60591-5 "Patient summary Document"
  * text = "Documento resumen de paciente embarazada"

* subject = Reference(Paciente-Emb-Ejemplo)

* date = "2024-12-03" //tiempo de edición del documento

* author = Reference(Prestador-Emb-Ejemplo)

* title = "Resumen Clínico de Pacientes Embarazadas - Chile"

* custodian = Reference(Organizacion-Emb-Ejemplo) //organizacion que mantiene el documento

* relatesTo.code = #appends //este documento agrega informacion adicional al documento de destino

//un OID es un identificador para estándares, en este caso FHIR. los 1ros numeros representan el país, el resto representa una institucion
* relatesTo.targetIdentifier.system = "urn:oid:2.16.152.1.10.1" //identificador ficticio; el OID 2.16.152.1 es del MINSAL, para identificar a Chile
* relatesTo.targetIdentifier.value = "ResumenEmbarazos-CL-2024-001"

* section[sectionMedicamentos].title = "Medicamentos"
* section[sectionMedicamentos].code.coding.system = loinc
* section[sectionMedicamentos].code.coding.code = #10160-0
* section[sectionMedicamentos].code.coding.display = "History of medication use Narrative"
* section[sectionMedicamentos].code.text = "Historial de uso de medicamentos"

* section[sectionMedicamentos].text.status = #generated
* section[sectionMedicamentos].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li><div><b>Medication Name</b>: Calcio (medicamento)</div><div><b>Code</b>: <span>7947003</span></div><div><b>Status</b>: <span>active, started 2024-08-03</span></div><div>Instructions: Administrar 200 mg por día</div></li></ul></div>"

* section[sectionMedicamentos].entry[listMedicamentos] = Reference(UsoMedicamento-Emb-Ejemplo)
* section[sectionMedicamentos].entry[prescripciones] = Reference(Prescripcion-CL-Ejemplo)

* section[sectionAlergias].title = "Alergias"
* section[sectionAlergias].code.coding.system = loinc
* section[sectionAlergias].code.coding.code = #48765-2
* section[sectionAlergias].code.coding.display = "Allergies and adverse reactions Document"
* section[sectionAlergias].code.text = "Documento de alergias y reacciones adversas"

* section[sectionAlergias].text.status = #generated
* section[sectionAlergias].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li><div><b>Allergy Name</b>: Hierro</div><div><b>Verification Status</b>: Confirmado</div><div><b>Reaction</b>: <span>Anafilaxia</span></div></li></ul></div>"

* section[sectionAlergias].entry[alergias] = Reference(Alergias-Emb-Ejemplo)

* section[sectionProblemas].title = "Problemas de salud - Condiciones"
* section[sectionProblemas].code.coding.system = loinc
* section[sectionProblemas].code.coding.code = #11450-4
* section[sectionProblemas].code.coding.display = "Problem list - Reported"
* section[sectionProblemas].code.text = "Lista de problemas"

* section[sectionProblemas].text.status = #generated
* section[sectionProblemas].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li><div><b>Condition Name</b>: Obesidad</div><div><b>Code</b>: <span>414916001</span></div><div><b>Status</b>: <span>active</span></div></li></ul></div>"

* section[sectionProblemas].entry[problema] = Reference(Condicion-Emb-Ejemplo)

* section[sectionProcedimientos].title = "Procedimientos"
* section[sectionProcedimientos].code.coding.system = loinc
* section[sectionProcedimientos].code.coding.code = #47519-4
* section[sectionProcedimientos].code.coding.display = "History of Procedures Document"
* section[sectionProcedimientos].code.text = "Documento sobre Historia de Procedimientos"

* section[sectionProcedimientos].text.status = #generated
* section[sectionProcedimientos].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">La paciente se realizó una cesárea como procedimiento obstétrico el día 26 de noviembre del presente año.</div>"

* section[sectionProcedimientos].entry[procedimiento] = Reference(Procedimiento-Emb-Ejemplo)

* section[sectionEmbarazoHx].title = "Observación: Embarazo"
* section[sectionEmbarazoHx].code.coding.system = loinc
* section[sectionEmbarazoHx].code.coding.code = #10162-6
* section[sectionEmbarazoHx].code.coding.display = "History of pregnancies Narrative"
* section[sectionEmbarazoHx].code.text = "Historia de los embarazos"

* section[sectionEmbarazoHx].text.status = #generated
* section[sectionEmbarazoHx].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">La paciente presentó un estado de embarazo positivo (Embarazada) el día 03 de marzo del presente año. Como resultado, se obtuvo que tiene un hijo.</div>"

* section[sectionEmbarazoHx].entry[statusEmbarazo] = Reference(EstadoEmbarazo-Ejemplo) //Estado Embarazo
* section[sectionEmbarazoHx].entry[resultadoEmbarazo] = Reference(ResultadoEmbarazoEjemplo) //Resultados Embarazo