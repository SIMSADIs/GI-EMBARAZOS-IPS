# Guía de Implementación de Resumen de Datos Clínicos de Pacientes Embarazadas basada en IPC-CL.

Esta guía de implementación busca ser un caso de uso específico de la guía de implementación de resumenes clínicos de pacientes a nivel nacional (IPS-CL), tomando como referencia la misma guía IPS-CL y la guía Cl Core para su desarrollo. La incorporación de la guía IPS nacional en la adaptación del caso de uso de resumen de embarazos, permite establecer perfiles FHIR específicos que representan la información clínica mínima necesaria para la conformación de resumenes de pacientes embarazadas a nivel nacional.

Un resumen de datos clínicos de pacientes embarazadas es un documento clínico que contiene la información más relevante del sujeto de atención, en este caso, información relacionada al estado del embarazo de la paciente, fecha estimada de parto, resultados o antecedentes de embarazos anteriores, además de condiciones de salud y otros datos escenciales para brindar una atención de calidad y más enfocada en la propia paciente que en la lectura y documentación de datos.

# Instalación previa y requisitos

Para llevar a cabo el desarrollo de este proyecto, fue necesario seguir los siguientes requisitos previos a la instalación:

## Requisitos
- Toda instalación debe ser en modo administrador dentro del computador.

## Instalación

- Instalar [**Visual Studio Code**](https://code.visualstudio.com/download), el cual servirá como editor de código.
- Instalar **Java jdk** dependiendo de su sistema operativo. Para ello, ingresar a [Java-downloads](https://www.oracle.com/cl/java/technologies/downloads/).
- Instalar **Node js**. Para ello ingresar a https://nodejs.org/en.
- Instalar **sushi FHIR**. Para este último:
  - Abrir el símbolo del sistema o cmd en el buscador de windows
  - Escribir **npm install -g fsh-sushi** y ejecutar.
  ```
  npm install -g fsh-sushi
  ```
  ** Se debe tener en cuenta que con el comando cd dentro del símbolo del sistema, se puede cambiar de directorio si es que así lo desea, como paso previo a la instalación de sushi.
  ```
  cd C:\Users\usuario\Desktop\Nombre_Carpeta
  ```
  - Escribir *sushi help* para verificar su instalación, o escribir *sushi -v* para verificar la versión de sushi.
  ```
  sushi help
  ```
  ```
  sushi -v
  ```
- Instalar las herramientas de publicación para la guía de implementación:
  - Primero, instalar **Ruby Jeckyll**. Ingresar a [Jeckyll-installation](https://jekyllrb.com/docs/installation/) y escoger según su sistema operativo.
  - Descargar e instalar **Ruby**. Instalar las 3 opciones que aparecen al momento de realizar la instalación. Ingresar a [Ruby-installation](https://rubyinstaller.org/). Esta es especificamente para windows.
  - Escribir en símbolo del sistema **gem install jekyll bundler**.
  ```
  gem install jekyll bundler
  ```
  - Escribir jekyll -v para verificar la versión e instalación de jekyll.
  ```
  jekyll -v
  ```
![image](https://github.com/user-attachments/assets/8a42106c-d7ba-40c6-abdd-cfc654dff340)

- Se recomienda agregar *java* en las variables de entorno. Para ello, buscar **variables de entorno** en el buscador de windows, y seleccionar el botón **variables de entorno**. Allí, se deberá seleccionar **variables del sistema** y posteriormente se deberá hacer doble click en **path**.
  A continuación, se deberá seleccionar el botón **examinar**. Allí se deberá buscar la ruta donde se instaló *java./java/bin* y se deberá seleccionar y guardar. Ejemplo:
  ```
  C:Program Files\Java\jdk-22\bin
  ```
Ahora, ¡debiera estar configurado para comenzar a utilizar sushi para crear una guía de implementación!

# Uso de SUSHI FHIR

SUSHI es un compilador de código que se basa en el lenguaje **FHIR Shorthand (FSH)**. Este es un lenguaje utilizado para definir el contenido de las guías de implementación; para mayor detalle visitar el [Manual FHIR Shorthand](https://build.fhir.org/ig/HL7/fhir-shorthand/).

## Mejores prácticas

Para comenzar con el desarrollo de una guía de implementación, se recomienda descargar e instalar [GitHub Desktop](https://desktop.github.com/download/). Esto permitirá un manejo más sencillo de los archivos y repositorios para los usuarios.
- Se debe crear una cuenta en github.
- Se debe seleccionar donde dice **New Repository** y se deberá crear un repositorio donde se almacenarán todos los archivos creados.
- 
  ![image](https://github.com/user-attachments/assets/f33f74ba-b404-43e5-afae-4a7f19c929db)
- Se debe seleccionar el botón de **Code** y posteriormente escoger la opción **Open with GitHub Desktop**. Esto permitirá que el repositorio se abra en el github de escritorio instalado previamente.
 
  ![image](https://github.com/user-attachments/assets/8c7bfd9b-9f07-4a97-8a6b-7c323b0431fd)
- GitHub de escritorio permitirá abrir el repositorio con Visual Studio Code. ¡Y Listo! Ya tendrás la carpeta creada en la cual podrás comenzar a desarrollar tu guía de implementación.

## SUSHI Init

Para 
Consultar la [documentación de SUSHI](https://fshschool.org/docs/sushi/) para más información sobre el uso de sushi.
