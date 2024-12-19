Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
Alias: ucum = http://unitsofmeasure.org
Alias: CScondition = http://terminology.hl7.org/CodeSystem/condition-clinical

Instance:    Condicion-Emb-Ejemplo
InstanceOf:  CondicionSaludCL
Usage:       #example
Title:       "Condición de Salud - Ejemplo"
Description: "Ejemplo de una condición que padece la paciente actualmente."

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

* subject = Reference(Paciente-Emb-Ejemplo)

* onsetPeriod.start = "2023-10-30" //periodo de inicio de la condicion

* asserter = Reference(Prestador-Emb-Ejemplo)

* note.text = """
### NOTA:
La paciente durante su post parto anterior presentó hipertensión arterial, dada su condición de salud.
"""
