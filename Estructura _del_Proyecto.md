# Estructura de la Guía de Implementación de Resumen de Datos Clínicos de Pacientes Embarazadas

Esta guía de implementación cuenta con las siguientes páginas, donde en cada una de ellas se define su respectivo contenido:
- Página de inicio: Contiene el alcance de la guía, contexto, descripción, contenido de la guía y aspectos generales. Este último punto hace referencia al **proceso de solicitud de resumenes clínicos de pacientes**.

Esta guía de implementación está compuesta de los siguientes artefactos FHIR:

## Perfiles

Esta guía se compone de un total de 17 perfiles, cada uno adaptado de acuerdo a lo referenciado a partir de la IPS nacional. Estos perfiles cuentan con sus propias reglas de cardinalidad, haciendo que algunos elementos se vuelvan obligatorios, cambiando además su repetibilidad, entre otros elementos que se mencionarán a continuación:

Se agregó en la página de Inicio lo siguiente:
El alcance de la guía
Contexto de la guía
Descripción
Contenido de la guía
Aspectos Generales (Proceso)
Se agregó la página con los objetivos general y específicos de la guía

Se espera agregar los casos de uso
Se debe editar el perfil Resultados de Embarazos, agregando una extensión y posiblemente un constrain
Quitar perfil de Antecedentes de Tipo de Parto

Se agregaron los siguientes perfiles:

Perfil Alergias
Se basa en el perfil Alergias de IPS-CL, restringiendo cardinalidades.
Se habilita el ejemplo:
Alergias - Ejemplo
Perfil Bundle
Se basa en el perfil Bundle de IPS-CL. (Se agregó esa modificación)
Composition y Paciente siguen siendo los únicos recursos obligatorios.
Se modificaron las referencias a los perfiles por los que se definieron en esta guía.
Se habilitó el ejemplo:
Bundle - Ejemplo
Perfil Composition
Se basa en el perfil Composition de IPS-CL. (Se agregó esa modificación)
Las secciones obligatorias son: Condición, Medicamentos, Alergias, EMbarazo y Procedimientos.
Se modificaron las referencias en las secciones por los perfiles que se definieron en esta guía.
Se habilitó el ejemplo:
Composition - Ejemplo
Perfil Condición
Se basa en el perfil Condición de IPS-CL.
Se modifica el ValueSet proveniente de IPS por uno acorde a las patologías que puede sufrir una embarazada, denominado Condición de Salud o patologías de la paciente.
Se hace referencia al elemento note para que se pueda agregar información adicional sobre alguna condición e incluso sobre la condición post-parto de la paciente.
Se habilitó el ejemplo:
Condición de salud
Perfil Hábitos de Alcohol
Se basa en el perfil Consumo de Alcohol de IPS-CL.
Se agregó un ValueSet sobre códigos UCUM utilizados como unidad de medida.
Se habilitó el ejemplo:
Hábitos de Alcohol
Perfil Hábitos Drogas
Se basa en el perfil Consumo de Tabaco de IPS-CL.
Este perfil se modificó para representar el consumo de drogas blandas y duras.
Se agregó un ValueSet con códigos relacionados al consumo de Drogas duras y blandas.
Se habilitó el ejemplo:
Hábitos de consumo de drogas
Perfil Medicamentos
Se basa en el perfil de Medicamentos de IPS-CL.
Se debiera modificar el ValueSet de medicamentos.
Se habilitó el ejemplo:
Medicamentos
Perfil Observación Estado Embarazo
Se basa en el perfil de Observación de Estado de embarazo de IPS-CL.
Se hace referencia al elemento note para que se pueda agregar información adicional sobre el estado del embarazo de la paciente e incluso sobre signos y síntomas de acuerdo a su estado.
Se habilitó el ejemplo:
Observación Estado Embarazo
Perfil Observación Fecha de Parto Estimada
Se basa en el perfil de Observación de Fecha estimada de parto de IPS-CL.
Se adecuó el elemento performer referenciando solamente a la paciente, prestador o rol del prestador en caso de que se evalúe la precisión del dato entregado.
Se habilitó el ejemplo:
Observación Fecha Estimada de Parto
Perfil Observación Resultados Embarazo: Resumen
Se basa en el perfil de Observación de Resultados de embarazos de IPS-CL.
Se eliminó la extension fecha de antecedente, dado que existe effective[x].
Se debe modificar para agregar una extensión a la observación sobre tipos de parto, agregando invariant rules para ver si se puede aplicar el dato solo si se utilizan ciertos valores del ValueSet. (VER)
Se debería agregar el ValueSet Tipos de parto.
Se habilitó el ejemplo:
Observación Resultados de Embarazos
Perfil Organización
Se basa en el perfil Organización de IPS-CL.
Se obliga telecom.
Se habilitó el ejemplo:
Organización
Perfil Paciente
Se basa en el perfil Paciente de IPS-CL.
Se realizó un Slice Closed para identifier para aquellos pacientes que tienen como identificador RUN u otro tipo de identificador.
Se obligó el slice NombreOficial. El otro elemento no quedó obligado.
Se habilitó el ejemplo:
Paciente
Perfil Prestador
Se basa en el perfil Prestador de IPS-CL.
Se habilitó el ejemplo:
Prestador
Perfil Procedimientos
Se basa en el perfil Procedimientos de IPS-CL.
Se modificó el ValueSet agregando procedimientos quirúrgicos que se realizó la paciente relacionados con el embarazo.
Se cambiaron las referencias de los elementos asserter, performer.actor y performer.onBehalfOf.
Se hace referencia al elemento note para que se pueda agregar información adicional sobre el procedimiento que se ha realizado la paciente.
Se habilitó el ejemplo:
Procedimientos
Perfil Rol Prestador
Se basa en el perfil Rol de Prestador de IPS-CL.
Se modificaron los ValueSet de Rol del profesional y Especialidad del profesional.
Se habilitó el ejemplo:
Rol Prestador
Perfil Uso De Medicamentos
Se basa en el perfil Declaración de Medicación de IPS-CL.
Se cambiaron las referencias de los perfiles
Se habilitó el ejemplo:
Uso De Medicamentos
Además, se agregaron los siguientes artefactos:
CodeSystem:
CSOtrosDatos
Extensiones:
Edad
Tipos de Partos
## Requisitos
- Toda instalación debe ser en modo administrador dentro del computador.

## Instalación

- Instalar [**Visual Studio Code**](https://code.visualstudio.com/download), el cual servirá como editor de código.
- Instalar **Java jdk** dependiendo de su sistema operativo. Para ello, ingresar a [Java-downloads](https://www.oracle.com/cl/java/technologies/downloads/) y seguir las instrucciones de instalación.
- Instalar **Node js**. Para ello ingresar a [Node.js](https://nodejs.org/en) y seguir las instrucciones de instalación. Escribir *node -v* para verificar su versión.
```
node -v
```
