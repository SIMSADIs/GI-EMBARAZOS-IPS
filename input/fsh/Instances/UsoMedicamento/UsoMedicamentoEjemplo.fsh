Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
Alias: CSConsent = http://terminology.hl7.org/CodeSystem/consentscope
Alias: CSv3 = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: EDQM = http://standardterms.edqm.eu

Instance:    UsoMedicamento-Emb-Ejemplo
InstanceOf:  UsoDeMedicamentoCL
Usage:       #example
Title:       "Uso de Medicamento - Ejemplo"
Description: "Ejemplo sobre la declaración de uso de medicación de la paciente."

* status = #active

* medicationReference = Reference(Medicamento-Emb-Ejemplo)
* medicationReference.display = "Tableta de calcio"

* subject = Reference(Paciente-Emb-Ejemplo)
* effectivePeriod.start = "2024-08-03" //comenzó con el uso de tabletas durante junio
//* effectivePeriod.end = "2019-02-07"

* dosage.text = "Se consume una tableta de calcio de 200 mg/día"
* dosage.timing.repeat.frequency = 1 //con que frecuencia ocurre el evento: el tratamiento es una vez
* dosage.timing.repeat.period = 1 //con que frecuencia ocurre el evento: un día; seria una vez al día
* dosage.timing.repeat.periodUnit = #d //unidad de medida de la frecuencia

* dosage.doseAndRate.doseQuantity = 200 ucum#mg "mg" //cantidad de medicamento administrado

* dosage.route
  * coding = EDQM#20002500 "Buccal use"
  * text = "Vía de administración bucal"

* note.text = """
### NOTA:
Se administra una tableta por día a partir de las 20 semanas hasta el final de la gestación.
"""
