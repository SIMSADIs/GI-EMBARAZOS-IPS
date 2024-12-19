Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct

Instance:    RolProfesional-Emb-Ejemplo
InstanceOf:  RolPrestadorEmbCL
Usage:       #example
Title:       "Rol Profesional Obstetra - Ejemplo"
Description: "Ejemplo sobre el rol de un profesional de la salud, específicamente ligado a la atención de mujeres durante el embarazo y el parto."

* practitioner = Reference(Prestador-Emb-Ejemplo) //hace referencia al prestador de salud

* organization = Reference(Organizacion-Emb-Ejemplo) //hace referencia a la organizacion a la que pertenece el prestador

* code //Rol que cumple el profesional; especialidad
  * coding = snomed#11935004 "Obstetrician"
  * text = "Obstetra"

* specialty
  * coding = CSEspecialidadesDeis#66 "Obstetricia"
  * text = "Especialista en Obstetricia"