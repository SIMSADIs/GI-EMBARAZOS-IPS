# Guía Resumen Embarazos

### Alcance

Esta versión es una guía para el resumen de datos clínicos de pacientes embarazadas. Busca ser un caso de uso específico de la guía de implementación de resúmenes clínicos de pacientes a nivel nacional (IPS-CL, por sus siglas en inglés), tomando como referencia la misma guía [IPS-CL](https://build.fhir.org/ig/HL7Chile/IPS-CL/) y la guía [Cl Core](https://hl7chile.cl/fhir/ig/clcore/1.9.1/).

### Contexto

Un resumen de datos clínicos de pacientes embarazadas es un documento clínico que contiene la información más relevante del sujeto de atención, en este caso, información relacionada al estado del embarazo de la paciente, fecha estimada de parto, resultados o antecedentes de embarazos anteriores, además de condiciones de salud y otros datos esenciales para brindar una atención de calidad y con más enfocada en la propia paciente que en la lectura y documentación de datos clínicos.

### Descripción

Esta guía de implementación busca estandarizar el formato y la transmisión de los datos clínicos para su interoperabilidad. Para lograr esto, resulta necesario basarse en la guía de implementación IPS de Chile, la cual define perfiles específicos y adaptables de acuerdo al caso de uso a desarrollar. 

La incorporación de la guía IPS nacional en la adaptación del caso de uso de resumen de embarazos, permite establecer perfiles FHIR específicos que representan la información clínica mínima necesaria para la conformación de resúmenes de pacientes embarazadas a nivel nacional.  

### Contenido de la guía

Esta guía de implementación se estructura de la siguiente manera, de acuerdo con el menú que se encuentra en la parte superior como *barra de menú*:

* [Inicio](index.html): Página de inicio de la Guía de implementación.
* [Objetivos](Objetivos.html): Provee de información general sobre los objetivos de esta guía.
* [Casos de Uso](Casos-de-uso.html): Provee de información sobre los casos de uso, sus actores y las transacciones por caso de uso.
* [Artefactos](artifacts.html): Página que contiene todos los artefactos de la guía. Estos son: Perfiles, Extensiones, ValueSets, CodeSystem y Ejemplos.
* [Historial de Cambios](Changes.html): Contiene los cambios realizados en la guía de implementación.

Esta estructura está diseñada para facilitar la navegación a través de los diversos componentes de la guía de implementación además de mejorar su comprensión.

### Aspectos Generales de esta Guía

A continuación, se describe el proceso general de la Guía de Implementación. Este es un proceso genérico sobre la solicitud del resumen clínico a partir de un sistema local y muestra cómo actúa el servidor ante la solicitud para permitir la generación del documento. 

<br>
<div align="center">
  <img src="Proceso.png" style="width:70%"> 
  <p>Proceso de solicitud de resumen</p>
</div>
<br>

El proceso abarca desde la solicitud del resumen clínico por parte del profesional de la salud, hasta la generación del resumen desde el repositorio para que este pueda ver visualizado por el profesional en el sistema local, revisando si es factible realizar un resumen.

Antes de que el servidor envíe el resumen como un documento, se debe tener en cuenta lo siguiente:

* Se debe verificar la existencia del paciente en el sistema, es decir, si es que presenta fichas clínicas para su identificación. Esto por medio de la operación *$Summary*, la cual además revisa la factibilidad del resumen. Si es que todo se encuentra de acuerdo a lo solicitado, *$Summary* agrupa los recursos dentro del repositorio para armar el documento en modo de resumen clínico del paciente. En caso de que el paciente no exista, se debe crear su ficha con sus datos, lo que es parte de otro proceso.
* Se deben considerar los datos del paciente contenidos en los recursos almacenados. El profesional de la salud puede crear recursos o bien, puede actualizar la información. 

**Ejemplo (Actualizar):** La paciente, que ya tenía alergias, presenta una nueva alergia confirmada y diagnosticada y debe ser registrada en el sistema.

**Ejemplo (Crear):** Una paciente sana presenta un problema de salud confirmado y diagnosticado, pero no se encuentra registrado, por lo que el profesional de la salud procede a crear el recurso Condition.

### Contribuciones

**Esta Guía de Implementación ha sido posible gracias a las contribuciones de las siguientes personas:**
<br>
* Denisse Aguilera, Tesista
* Cesar Galindo, Profesor Guía
* Franco Ulloa, Colaborador MINSAL

### Perfiles

{% include globals-table.xhtml %}

### Dependencias

{% include dependency-table.xhtml %}

### Analisis de versiones cruzadas

{% include cross-version-analysis.xhtml %}

### Declaracion de propiedad intelectual

{% include ip-statements.xhtml %}