Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
Alias: CSAtc = http://www.whocc.no/atc
Alias: ucum = http://unitsofmeasure.org
Alias: CSCodigoVacunas = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodigoVacunas
Alias: EDQM = http://standardterms.edqm.eu

Instance:    Organizacion-Emb-Ejemplo
InstanceOf:  OrganizacionEmbCL
Usage:       #example
Title:       "Organización - Ejemplo"
Description: "Ejemplo sobre la organización en la que se atendió la paciente."

* identifier.system = "https://datos.gob.cl/dataset/establecimientos-de-salud-vigentes/resource/2c44d782-3365-44e3-aefb-2c8b8363a1bc" //Corresponde al sistema en el cual se encuentran registrados los centros de salud vigentes
* identifier.value = "106302" //id del centro de salud (en este caso es el cesfam barón)

* name = "Centro de Salud Familiar Barón"
* alias = "CESFAM Barón"

* telecom.system = #email //telefono de contacto con la organizacion
* telecom.use = #work
* telecom.value = "cesfam.baron@gmail.com"