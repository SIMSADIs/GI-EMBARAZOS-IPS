Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
Alias: urlextension = http://hl7.org/fhir/StructureDefinition/data-absent-reason

Instance:    Procedimiento-Emb-Ejemplo
InstanceOf:  ProcedimientosEmbCL
Usage:       #example
Title:       "Procedimiento Obstétrico - Ejemplo"
Description: "Ejemplo sobre procedimiento obstétrico al que se ha sometido la paciente."

* status = #completed //completado

* code
  * coding = snomed#11466000 "Cesarean section" //procedimiento
  * text = "Cesárea"

* category
  * coding = snomed#386637004 "Obstetric procedure (procedure)" //procedimiento categoria
  * text = "Procedimiento obstétrico"

* subject = Reference(Paciente-Emb-Ejemplo) //Quien se hizo el procedimiento

* performedDateTime = "2024-11-26"

* note.text = """
### NOTA:
La paciente se realizó el procedimiento obstétrico de cesárea con fecha 03 de diciembre del presente año. En este caso, la fecha representa la fecha de nacimiento del bebé.
"""