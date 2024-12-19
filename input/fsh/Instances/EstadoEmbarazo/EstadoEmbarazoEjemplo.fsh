Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct

Instance:    EstadoEmbarazo-Ejemplo
InstanceOf:  EstadoEmbarazoCL
Usage:       #example
Title:       "Estado del embarazo - Ejemplo"
Description: "Ejemplo de una observación realizada sobre el estado del embarazo de la paciente."

* status = #final

* code
  * coding = loinc#82810-3 "Pregnancy status"
  * text = "Estado de embarazo"

* subject = Reference(Paciente-Emb-Ejemplo)
* effectiveDateTime = "2024-03-03" //momento en el que se afirma que el valor es verdadero
* performer = Reference(Prestador-Emb-Ejemplo)

* valueCodeableConcept
  * coding = snomed#77386006 "Pregnancy"
  * text = "Embarazada"

* hasMember = Reference(FechaEstimadaParto-Ejemplo)

* note.text = """
### NOTA:
El estado de embarazo positivo se dió el día 03 de marzo del 2024.
"""