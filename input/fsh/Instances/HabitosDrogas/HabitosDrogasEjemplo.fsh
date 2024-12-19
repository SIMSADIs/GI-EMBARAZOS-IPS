Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct

Instance:    ConsumoDrogas-Emb-Ejemplo
InstanceOf:  ConsumoDrogasDurasyBlandasEmbCL
Usage:       #example
Title:       "Observación: Hábito sobre el consumo de drogas - Ejemplo"
Description: "Ejemplo de una observación sobre el consumo de drogas por parte de la paciente"

* status = #final

* code
  * coding = loinc#72166-2 "Tobacco smoking status"
  * text = "Estado de tabaquismo"

* subject = Reference(Paciente-Emb-Ejemplo)
* effectiveDateTime = "2022"
* performer = Reference(Prestador-Emb-Ejemplo)

* valueCodeableConcept
  * coding = snomed#44870007 "Misused drugs in past (finding)"
  * text = "Abuso de drogas en el pasado"
