Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
Alias: ucum = http://unitsofmeasure.org

Instance:    ResultadoEmbarazoEjemplo
InstanceOf:  ResultadosEmbarazosCL
Usage:       #example
Title:       "Observación: Resultado de Embarazo - Ejemplo"
Description: "Ejemplo de una observación sobre un resumen de los resultados de embarazo del paciente"

* status = #final

* code
  * coding = loinc#11640-0 "[#] Births total"
  * text = "[#] Nacimientos totales"

//* code
//  * coding = loinc#11612-9 "[#] Abortions"
//  * text = "[#] Abortos"

* subject = Reference(Paciente-Emb-Ejemplo)
* effectiveDateTime = "2024-12-08"
* performer = Reference(Prestador-Emb-Ejemplo)

* valueQuantity.value = 1
* valueQuantity.unit = "hijo"
* valueQuantity.system = ucum
* valueQuantity.code = #1 //se refiere al numero de nacimientos totales segun el codigo de arriba
