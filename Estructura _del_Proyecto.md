# Estructura de la Guía de Implementación de Resumen de Datos Clínicos de Pacientes Embarazadas

Esta guía de implementación cuenta con las siguientes páginas, donde en cada una de ellas se define su respectivo contenido:
- **Página de inicio:** Contiene el alcance de la guía, contexto, descripción, contenido de la guía y aspectos generales. Este último punto hace referencia al **proceso de solicitud de resumenes clínicos de pacientes**, el cual se puede observar en la siguiente imagen.
 
![image](https://github.com/user-attachments/assets/41d361fd-6225-4b9e-8043-e45072a6c29e)

- **Página de Objetivos:** Contiene tanto el objetivo general de la guía como los objetivos específicos de la misma.
- **Página de Casos de Uso:** Contiene los casos de uso a partir del proceso identificado. Además, se establecen las operaciones FHIR a utilizar tanto para cuando se solicita un resumen como para la creación y/o actualización de un recurso. A modo de resumen, se tiene el siguiente diagrama con las transacciones y operaciones FHIR por caso de uso:
  
![image](https://github.com/user-attachments/assets/73eadd01-ae49-4df6-a28a-71afe0af3dda)

- **Página de Artefactos:** Contiene todos los artefactos FHIR creados a partir de la guía de implementación IPS-CL. Estos artefactos comprenden los perfiles, ejemplos, extensiones y terminologías como ValueSets y CodeSystem. Para mayor información visitar [Manual FHIR Shorthand](https://build.fhir.org/ig/HL7/fhir-shorthand/reference.html). Este manual contiene información detalla sobre cómo utilizar e implementar cada uno de los artefactos FHIR.
- **Página de Historial de Cambios:** Contiene todos los cambios que se han realizado en la guía desde que se obtuvo la primera versión en adelante. 

Teniendo en consideración los artefactos, esta guía de implementación está compuesta por lo siguiente:

## Perfiles

Esta guía contiene un total de 17 perfiles, cada uno adaptado de acuerdo a lo referenciado a partir de la IPS nacional. Sin embargo, para desarrollar cada perfil, fue necesario realizar un levantamiento de información con un profesional del área, en este caso fue con una matrona del hospital Carlos Van Buren de Valparaíso. Esta información, compone el denominado *Modelo Lógico de Datos* que contiene el cómo deben distribuirse los datos, su cardinalidad, si es que requieren de alguna extensión y/o de algún set de códigos correspondientes a un sistema de terminología en particular, etc. Este modelo se encuentra aquí: [Modelo Logico Datos](https://github.com/SIMSADIs/GI-EMBARAZOS-IPS/blob/main/Modelo%20L%C3%B3gico%20de%20Datos.xlsx) y puede ser descargado y visualizado con mayor detalle y detenimiento.
Los perfiles son los siguientes:

  - **Perfil Alergias:** Se basa en el perfil Alergias de IPS-CL, restringiendo cardinalidades.
  - **Perfil Bundle:** Se basa en el perfil Bundle de IPS-CL. Los recursos Composition y Paciente siguen siendo los únicos obligatorios.
  - **Perfil Composition:** Se basa en el perfil Composition de IPS-CL. Las secciones obligatorias son: Condición, Medicamentos, Alergias, Embarazo y Procedimientos.
  - **Perfil Condición:** Se basa en el perfil Condición de IPS-CL. Se modifica el ValueSet proveniente de IPS por uno acorde a las patologías que puede sufrir una embarazada, denominado Condición de Salud o patologías de la paciente.
  - **Perfil Hábitos de Alcohol:** Se basa en el perfil Consumo de Alcohol de IPS-CL. Se agregó un ValueSet sobre códigos UCUM utilizados como unidad de medida.
  - **Perfil Hábitos Drogas:** Se basa en el perfil Consumo de Tabaco de IPS-CL. Este perfil se modificó para representar el consumo de drogas blandas y duras. Se agregó un ValueSet con códigos relacionados al consumo de Drogas duras y blandas.
  - **Perfil Medicamentos:** Se basa en el perfil de Medicamentos de IPS-CL. Se modifica el ValueSet de medicamentos por uno que contiene las vitaminas que consume la paciente depediendo de su estado.
  - **Perfil Observación Estado Embarazo:** Se basa en el perfil de Observación de Estado de embarazo de IPS-CL.
  - **Perfil Observación Fecha de Parto Estimada:** Se basa en el perfil de Observación de Fecha estimada de parto de IPS-CL. Se adecuó el elemento performer referenciando solamente a la paciente, prestador o rol del prestador en caso de que se evalúe la precisión del dato entregado.
  - **Perfil Observación Resultados Embarazo: Resumen:** Se basa en el perfil de Observación de Resultados de embarazos de IPS-CL.
  - **Perfil Organización:** Se basa en el perfil Organización de IPS-CL.
  - **Perfil Paciente:** Se basa en el perfil Paciente de IPS-CL. Se realizó un Slice Closed para identifier para aquellos pacientes que tienen como identificador RUN u otro tipo de identificador.
  - **Perfil Prestador:** Se basa en el perfil Prestador de IPS-CL.
  - **Perfil Procedimientos:** Se basa en el perfil Procedimientos de IPS-CL. Se modificó el ValueSet agregando procedimientos quirúrgicos y obstétricos que se realizó la paciente relacionados con el embarazo.
  - **Perfil Rol Prestador:** Se basa en el perfil Rol de Prestador de IPS-CL. Se modificaron los ValueSet de Rol del profesional y Especialidad del profesional.
  - **Perfil Uso De Medicamentos:** Se basa en el perfil Declaración de Medicación de IPS-CL.

## Instancias

## CodeSystem y ValueSets

## Extensiones


```
node -v
```
