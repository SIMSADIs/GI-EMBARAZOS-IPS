Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
Alias: CSConsent = http://terminology.hl7.org/CodeSystem/consentscope
Alias: CSallergy = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical
Alias: CSallergyver = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification

Instance:    Alergias-Emb-Ejemplo
InstanceOf:  AlergiasEmbCL
Usage:       #example
Title:       "Alergias - Ejemplo"
Description: "Ejemplo sobre el padecimiento de una o más alergias por parte de la paciente, declaradas y confirmadas."

* clinicalStatus
  * coding = CSallergy#active "Active"
  * text = "Activo"

* verificationStatus
  * coding = CSallergyver#confirmed "Confirmed"
  * text = "Confirmado"

* type = #allergy

* criticality = #high

* code
  //* coding[0] = snomed#3829006 "Iron"
  * coding = snomed#3829006 "Iron"
  * text = "Hierro"

* patient = Reference(Paciente-Emb-Ejemplo) //Para quien es la prescripción de medicacion

* onsetAge.value = 15
* onsetAge.system = ucum
* onsetAge.code = #a
* onsetAge.unit = "años"

* recorder = Reference(Prestador-Emb-Ejemplo) //es quien registro la alergia

* reaction
  * manifestation
    * coding = snomed#39579001 "Anaphylaxis"
    * text = "Anafilaxia"

* note.text = """
### NOTA:
El cuadro clínico que suele presentar la paciente ante la exposición a Hierro es **intenso picor en manos y cuero cabelludo.**
Además, presenta **taquitardia y dificultad respiratoria.**
"""