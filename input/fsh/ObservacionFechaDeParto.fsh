Alias: $FechaEstimadaParto = http://hl7.org/fhir/uv/ips/ValueSet/edd-method-uv-ips

Profile: FechaEstimadaPartoCL
Parent: ObservationEmbarazoFechaEstimadaDePartoClIps
Id: Fecha-estimada-de-parto-cl-ips
Title: "Fecha Estimada de Parto (Embarazo-CL)"
Description: "Perfil de la fecha estimada de parto basado en la IPS chilena. Este perfil restringe el recurso Observación para representar la fecha estimada de parto de la paciente que se encuentra embarazada.

Se debe tener en consideración que, si se utiliza el dato *Delivery date Estimated from last menstrual period* (Fecha de parto Estimada a partir del último período menstrual) proveniente del ValueSet definido en el elemento code, este puede hacer referencia tanto la FUR Operacional como la FUR Gestante.
FUR hace referencia a la Fecha de Última Regla. La FUR operacional corresponde a la fecha estimada de parto indicada por el profesional de la salud, mientras que la FUR Gestante es la que indica la paciente. Por ello, dependiendo de la que se vaya a registrar, indicar el performer correspondiente."

* ^version = "0.1.0"
* ^publisher = "HL7 Chile"
* ^status = #draft
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* code 1..1 MS
* code only CodeableConceptIPS
* code from $FechaEstimadaParto (required)
* code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension.valueString = "Códigos de fecha estimada de parto"
* code ^binding.description = "Representa los códigos para la fecha estimada de parto."

//HACER PERFIL PARA FECHA DE ULTUMA REGLA (ahora no)
//Es usado para especificar la fecha de última regla de la paciente para calcular las semanas de gestación."
//se modifico performer

* subject 1..1 MS
* subject only Reference(PacienteEmbCL)

* performer 1..1 MS
* performer only Reference(PacienteEmbCL or PrestadorEmbCL or RolPrestadorEmbCL) //se restringe solo a estos dado que la fecha de ultima regla o menstruacion (FUR) puede ser mas o menos precisa dependiendo de quien haga la anotación clínica (paciente o medico), y suele ser la FUR operacional (por el medico) la mas preferida para el manejo clinico para estimar la fecha de parto

* valueDateTime 1..1 MS //utilizado para especificar un instante de tiempo; fecha del dato
* valueDateTime only dateTime
* valueDateTime ^sliceName = "valueDateTime"
