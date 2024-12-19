Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
Alias: CSConsent = http://terminology.hl7.org/CodeSystem/consentscope
Alias: CSv3 = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: EDQM = http://standardterms.edqm.eu

Instance:    Prescripcion-CL-Ejemplo
InstanceOf:  PrescripcionEmbClIps
Usage:       #example
Title:       "Prescripción de medicamentos - Ejemplo"
Description: "Ejemplo sobre la prescripción de medicación relacionada con la paciente embarazada. Esta es prescrita por un profesional de salud"

* status = #completed

* intent = #original-order

* requester = Reference(Prestador-Emb-Ejemplo)

* medicationReference = Reference(Medicamento-Emb-Ejemplo)
* medicationReference.display = "Tableta de Calcio"

* subject = Reference(Paciente-Emb-Ejemplo) //Para quien es la prescripción de medicacion

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
