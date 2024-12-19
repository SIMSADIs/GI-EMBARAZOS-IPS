Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
Alias: ucum = http://unitsofmeasure.org

Instance:    ConsumoAlcohol-Emb-Ejemplo
InstanceOf:  ConsumoAlcoholEmbCL
Usage:       #example
Title:       "Observación: Hábito sobre el consumo de alcohol - Ejemplo"
Description: "Ejemplo sobre si la paciente consume o no alcohol y con cuánta periodicidad."

* status = #final

* code
  * coding = loinc#74013-4 "Alcoholic drinks per day"
  * text = "Bebidas alcohólicas por día/semana"

* subject = Reference(Paciente-Emb-Ejemplo)
* effectiveDateTime = "2023-11-15"
* performer = Reference(Prestador-Emb-Ejemplo)

* valueQuantity.value = 1
* valueQuantity.system = ucum
* valueQuantity.code = #wk
* valueQuantity.unit = "Copa de vino por semana" //1 copa de vino por semana