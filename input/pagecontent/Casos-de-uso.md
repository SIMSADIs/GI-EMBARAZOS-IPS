### Casos de Uso

Esta guía de implementación cuenta con 3 casos de uso. Todas las transacciones hacen referencia a la interacción entre el sistema local utilizado por un profesional de la salud u otro ente, y el repositorio IPS o también denominado servidor. El diagrama de secuencia se visualiza a continuación:

<div align="center" >
  {% include Diagrama.svg %}
</div>
<br clear="all"/>

A continuación, se detallan cada uno de los casos de uso:

##### Caso de Uso 1: Solicitud del Resumen de Paciente

Este caso de uso describe la solicitud del resumen clínico de una paciente por medio del sistema local hacia el repositorio IPS. En este caso, el sistema consultará por el recurso asociado al paciente en el repositorio para la generación del documento de resumen. 
**No es responsabilidad de este caso de uso crear la ficha del paciente, ya que ese es otro proceso, por lo que se asume que el paciente ya está creado.**
<br>

##### Recursos Asociados

En este caso, el recurso asociado corresponde al **Bundle**, ya que luego de la solicitud el repositorio retorna un *Bundle Document.*
<br>

<div align="center" >
  {% include CU1.svg %}
</div>
<br clear="all"/>

##### Operación FHIR

Para la solicitud del resumen, se utiliza la operación **$Summary** por medio de un **POST** o un **GET**, devolviendo un Bundle de tipo Documento IPS.
<br>

```
POST [base]/Patient/[id]/$summary

GET [base]/Patient/[id]/$summary
```

#### Caso de Uso 2: Crear recurso

Este caso de uso describe la creación de uno o más recursos asociados a la paciente, a partir del sistema local hacia el repositorio IPS. Esto es en el caso de que la paciente no tenga un recurso específico asociado a ella y se requiera al momento de generar su documento de resumen.

Cuando se crea el recurso del paciente, éste queda almacenado en el repositorio IPS.
<br>

##### Recursos Asociados

En este caso, puede ser cualquiera de los recursos habilitados dentro del resumen clínico de pacientes embarazadas, comenzando por los obligatorios.
<br>

<div align="center" >
  {% include CU2.svg %}
</div>
<br clear="all"/>

##### Operación FHIR

Para crear un recurso, se utiliza la operación **POST**. 
El uso de llaves *{}* indica la presencia de cualquier recurso, tal como se mencionó anteriormente.
<br>

```
POST [URL_Base]/{TypeResource}/
```

#### Caso de Uso 3: Actualización de recurso

Este caso de uso describe la actualización de uno o más recursos asociados a la paciente, desde el sistema local hacia el repositorio IPS. Esto es, en el caso de que la paciente tenga asociado un recurso en el cual se requiera añadir o modificar información para su posterior visualización en el documento de resumen.
*Ejemplo:* La paciente presentó una nueva alergia diagnosticada y confirmada por un profesional de la salud, por lo que se debe actualizar el recurso *AllergyIntolerance*.
<br>

##### Recursos Asociados

En este caso, puede ser cualquiera de los recursos habilitados dentro del resumen clínico de pacientes embarazadas.
<br>

<div align="center" >
  {% include CU3.svg %}
</div>
<br clear="all"/>

##### Operación FHIR

Para actualizar la información de un recurso, se utiliza la operación **PUT**. 
El uso de llaves *{}* indica la presencia de cualquier recurso, tal como se mencionó anteriormente.
<br>

```
PUT [URL_Base]/{TypeResource}/[id]
```
