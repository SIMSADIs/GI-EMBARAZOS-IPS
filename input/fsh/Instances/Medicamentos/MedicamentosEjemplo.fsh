Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
Alias: CSAtc = http://www.whocc.no/atc
Alias: EDQM = http://standardterms.edqm.eu

Instance:    Medicamento-Emb-Ejemplo
InstanceOf:  MedicamentoCL
Usage:       #example
Title:       "Medicamento - Ejemplo"
Description: "Ejemplo sobre un medicamento que utiliza el paciente."

* language = #es

* status = #active

* extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/NombreComercial"
* extension.valueString = "Calcio"

* code.coding[0] = snomed#767113005 "Product containing calcium (medicinal product)"
* code.coding[=].display.extension.extension[0].url = "lang"
* code.coding[=].display.extension.extension[=].valueCode = #es
* code.coding[=].display.extension.extension[+].url = "content"
* code.coding[=].display.extension.extension[=].valueString = "Calcio (medicamento)"
* code.coding[=].display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"

* code.text = "Calcio (medicamento)"

* form
  * coding = EDQM#10219000 "Tablet" //En que forma se proporciona el medicamento, en este caso es en formato tableta
  * text = "Tableta"
