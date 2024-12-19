Profile: BundleDocumentoEmbCL
Parent: BundleDocumentoIPSCl
Id: BundleEmb-documento-ips-cl
Title: "Bundle Resumen Clínico Embarazos"
Description: """
Este perfil representa las restricciones aplicadas al recurso Bundle por la Guía de Implementación FHIR del Resumen Clínico de Pacientes Embarazadas, incluyendo restricciones locales de Chile, para ser aplicado a nivel nacional.

En este caso, el Bundle es de tipo document y tiene como propósito agrupar y estructurar todos los recursos, partiendo como mínimo por los requeridos (Paciente y Composition); los recursos son necesarios para conformar el resumen de pacientes embarazadas.
"""

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[=].valueInteger.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueInteger.extension.valueCanonical = "https://hl7chile.cl/fhir/ig/clembarazos/ImplementationGuide/hl7.fhir.cl.clembarazos"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft
* ^extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueCode.extension.valueCanonical = "https://hl7chile.cl/fhir/ig/clembarazos/ImplementationGuide/hl7.fhir.cl.clembarazos"

* entry 2..* MS
  * ^short = "Entradas del documento"

* entry[composition]
  * resource 1..1
    * ^short = "Composition del Resumen de datos de Pacientes Embarazadas de acuerdo a la IPS chilena"
  * resource only CompositionEmb-cl-ips

* entry[patient]
  * resource 1..1
    * ^short = "Información Demográfica de la Paciente"
  * resource only Paciente-embarazo-cl-ips

* entry[allergyintolerance]
  * resource 1..  
    * ^short = "Alergias de la Paciente"
  * resource only Alergias-embarazo-cl-ips

* entry[condition]
  * resource 1..
    * ^short = "Condiciones de salud de la Paciente"
  * resource only Condicion-de-salud-cl-ips

* entry[medication]
  * resource 1..
    * ^short = "Medicamentos utilizados en registros para la Paciente"
  * resource only Medicamento-embarazos-cl-ips

* entry[medicationstatement]
  * resource 1..
    * ^short = "Historial de Medicamentos de la Paciente"
  * resource only Uso-de-medicamentos-cl-ips

* entry[medicationrequest]
  * resource 1..
    * ^short = "Prescripción de Medicamentos de la Paciente"
  * resource only Prescripcion-embarazo-cl-ips

* entry[practitioner]
  * resource 1..
    * ^short = "Profesionales de la Salud"
  * resource only Prestador-embarazo-cl-ips

* entry[practitionerrole]
  * resource 1..
    * ^short = "Roles de los Profesionales de la Salud"
  * resource only RolPrestador-embarazo-cl-ips

* entry[procedimientos]
  * resource 1..
    * ^short = "Historial de procedimientos realizados a la paciente"
  * resource only Procedimientos-embarazo-cl-ips

* entry[organization]
  * resource 1..
    * ^short = "Organizaciones de la Salud"
  * resource only Organizacion-embarazo-cl-ips

* entry[observation-pregnancy-edd]
  * resource 1..
    * ^short = "Observaciones sobre la fecha estimada de parto"
  * resource only Fecha-estimada-de-parto-cl-ips

* entry[observation-pregnancy-outcome]
  * resource 1..
    * ^short = "Observaciones sobre resultados/antecedentes del embarazo"
  * resource only Resultados-de-embarazos-cl-ips

* entry[observation-pregnancy-status]
  * resource 1..
    * ^short = "Observaciones sobre el estado del embarazo"
  * resource only Estado-del-embarazo-cl-ips

* entry[observation-alcohol-use]
  * resource 1..
    * ^short = "Observaciones sobre el consumo de alcohol"
  * resource only Consumo-alcohol-cl-ips

* entry[observation-tobacco-use]
  * resource 1..
    * ^short = "Observaciones sobre el consumo de drogas duras y/o blandas"
  * resource only Consumo-drogas-duras-y-blandas-cl-ips








