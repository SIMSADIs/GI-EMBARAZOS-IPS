# Guía de Implementación de Resumen de Datos Clínicos de Pacientes Embarazadas basada en IPC-CL.

Esta guía de implementación busca ser un caso de uso específico de la guía de implementación de resumenes clínicos de pacientes a nivel nacional (IPS-CL), tomando como referencia la misma guía IPS-CL y la guía Cl Core para su desarrollo. La incorporación de la guía IPS nacional en la adaptación del caso de uso de resumen de embarazos, permite establecer perfiles FHIR específicos que representan la información clínica mínima necesaria para la conformación de resumenes de pacientes embarazadas a nivel nacional.

Un resumen de datos clínicos de pacientes embarazadas es un documento clínico que contiene la información más relevante del sujeto de atención, en este caso, información relacionada al estado del embarazo de la paciente, fecha estimada de parto, resultados o antecedentes de embarazos anteriores, además de condiciones de salud y otros datos escenciales para brindar una atención de calidad y más enfocada en la propia paciente que en la lectura y documentación de datos.

# Instalación previa y requisitos

Para llevar a cabo el desarrollo de este proyecto, fue necesario seguir los siguientes requisitos previos a la instalación:

## Requisitos
- Toda instalación debe ser en modo administrador dentro del computador.

## Instalación

- Instalar Java jdk dependiendo de su sistema operativo. 
- Instalar Node js
- Instalar sushi FHIR. Para este último:
  - Abrir el símbolo del sistema o cmd en el buscador de windows
  - Escribir npm install -g fsh-sushi y ejecutar.
  ```
  npm install -g fsh-sushi
  ```
  ** Se debe tener en cuenta que con el comando cd dentro del símbolo del sistema, se puede cambiar de directorio si es que así lo desea, como paso previo a la instalación de sushi.
  ```
  cd C:\Users\usuario\Desktop\Nombre_Carpeta
  ```
  - Escribir sushi help para verificar su instalación, o escribir sushi -v para verificar la versión de sushi.
  ```
  sushi help
  ```
  ```
  sushi -v
  ```
- Instalar las herramientas de publicación para la guía de implementación:
  - Primero, instalar Ruby Jeckyll. Ingresar a https://jekyllrb.com/docs/installation/ y escoger según su sistema operativo.
  - Descargar e instalar Ruby. Instalar las 3 opciones que aparecen al momento de realizar la instalación. Ingresar a https://rubyinstaller.org/. Esta es especificamente para windows.
  - Escribir en símbolo del sistema gem install jekyll bundler.
  ```
  gem install jekyll bundler
  ```
  - Escribir jekyll -v para verificar la versión e instalación de jekyll.
  ```
  jekyll -v
  ```
- Se recomienda agregar *java* en las variables de entorno. Para ello, buscar **variables de entorno** en el buscador de windows, y seleccionar el botón **variables de entorno**. Allí, se deberá seleccionar **variables del sistema** y posteriormente se deberá hacer doble click en **path**.
  A continuación, se deberá seleccionar el botón **examinar**. Allí se deberá buscar la ruta donde se instaló *java./java/bin* y se deberá seleccionar y guardar. Ejemplo:
  ```
  C:Program Files\Java\jdk-22\bin
  ```  
  Posteriormente, en **variables de usuario**, seleccionar el botón **Nuevo**. Allí se deberá ingresar el nombre de la nueva variable. En este caso debe llamarse **JAVA_HOME** y se deberá examinar el directorio para buscar la carpeta correspondiente a la variable que se quiere crear, por ejemplo, en este caso era **C:\Program Files\Java\jdk-22**
  ```
  C:Program Files\Java\jdk-22
  ``` 
