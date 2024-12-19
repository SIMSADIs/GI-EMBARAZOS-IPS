Alias: loinc = http://loinc.org

Instance:    FechaEstimadaParto-Ejemplo
InstanceOf:  FechaEstimadaPartoCL
Usage:       #example
Title:       "Fecha Estimada de Parto - Ejemplo"
Description: "Ejemplo de una observación sobre la fecha estimada de parto de la paciente"

* status = #final

* code
  * coding = loinc#11779-6 "Delivery date Estimated from last menstrual period"
  * text = "Fecha estimada de parto a partir del último periodo menstrual (FUR Operacional)"

* subject = Reference(Paciente-Emb-Ejemplo)

* effectiveDateTime = "2024-05-05"

* performer = Reference(Prestador-Emb-Ejemplo)

* valueDateTime = "2024-11-26" //corresponde a la fecha estimada de parto segun el prestador

* note.text = """
### NOTA: Se realizó una ecografía el día 05 de mayo (durante el primer trimestre) a la paciente para determinar la fecha de última regla de
de manera más precisa (FUR Operacional). Por lo tanto, la fecha estimada de parto es en noviembre de este año.
"""