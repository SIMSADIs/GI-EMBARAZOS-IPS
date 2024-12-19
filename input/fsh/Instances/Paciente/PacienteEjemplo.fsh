Alias: edad = 	https://hl7chile.cl/fhir/ig/clembarazos/StructureDefinition/Edad

Instance:    Paciente-Emb-Ejemplo
InstanceOf:  PacienteEmbCL
Usage:       #example
Title:       "Ejemplo de Paciente - Resumen de Embarazos"
Description: "Ejemplo de paciente según la guía de implementación de resumen de embarazos basada en IPS nacional."

* identifier[RUN].use = #official    // Obligado
* identifier[RUN].type.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodigoDNI"
* identifier[RUN].type.coding.code = #NNCHL
* identifier[RUN].type.coding.display = "Chile"

// Extensión para el País de Emisión del Documento
* identifier[RUN].type.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* identifier[RUN].type.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* identifier[RUN].type.extension.valueCodeableConcept.coding.code = #152
* identifier[RUN].type.extension.valueCodeableConcept.coding.display = "Chile"

// Definir el sistema y valor del identificador
* identifier[RUN].system = "http://regcivil.cl/Validacion/RUN"
* identifier[RUN].value = "14.241.432-8" //38 años app

* active = true //Registro activo

//Nombre Oficial
* name[NombreOficial].use = #official
* name[NombreOficial].family = "Henriquez"
//* name[NombreOficial].family.extension[segundoApellido] = SegundoApellidoPacienteCL
* name[NombreOficial].given[0] = "Susana"
* name[NombreOficial].given[+] = "Mercedes"
//* name[NombreOficial].given[+] = ""

//nombre social
* name[NombreSocial].use = #usual
* name[NombreSocial].given = "Susy"

* extension.url = edad
* extension.valueInteger = 38

* telecom.system = #phone
* telecom.use = #mobile
* telecom.value = "932785678"

* gender = #female
* birthDate = "1995-05-01"

//Address
* address.use = #home
* address.line[0] = "Av. General Vidaurre, casa 84 G"

// Ciudad (Comuna)
* address.city = "Valparaíso"

// Extensión de comuna
* address.city.extension[0].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
* address.city.extension[0].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL"
* address.city.extension[0].valueCodeableConcept.coding.code = #05101  // Código para Valparaiso
* address.city.extension[0].valueCodeableConcept.coding.display = "Valparaíso"

// Región
* address.state = "Valparaíso"

// Extensión de región
* address.state.extension[0].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension[0].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL"
* address.state.extension[0].valueCodeableConcept.coding.code = #05  // Código para Región Valparaiso
* address.state.extension[0].valueCodeableConcept.coding.display = "Valparaíso"

// País
* address.country = "Chile"

// Extensión de país
* address.country.extension[0].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* address.country.extension[0].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* address.country.extension[0].valueCodeableConcept.coding.code = #152  // Código para Chile
* address.country.extension[0].valueCodeableConcept.coding.display = "Chile"