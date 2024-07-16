Instance: PacienteExample
InstanceOf: Paciente 
Usage: #Example
Title: "Example Patient"
Description: "An example Patient instance."

* id = "example-paciente"
* extension[Sexobiologico].valueCodeableConcept = #male
* extension[Nacionalidad].valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
* extension[Nacionalidad].valueCodeableConcept.coding.code = #CL
* extension[Nacionalidad].valueCodeableConcept.coding.display = "Chile"
* extension[Geolocalizacion].valueString = "Luis Rodriguez"
* extension[Comunas].valueCodeableConcept = #Santiago
* extension[Provincia].valueCodeableConcept = #Santiago
* extension[Region].valueCodeableConcept = #RegiónMetropolitana
* name.family = "Perez"
* name.given = "Juan"
* birthDate = "1980-01-01"
* identifier.value = "12345678-9"
* contact.extension.url = "http://example.org/fhir/StructureDefinition/IdContacto"
* contact.extension.valueIdentifier.system = "http://example.org/fhir/identifier"
* contact.extension[IdContacto].extension[tutId].value[x]  = "20435765-5"
* contact.extension[Geolocalizacion].valueString = "Gregorio Mira 123" 
* contact.extension[Provincia].valueCodeableConcept = #Santiago
* contact.extension[Comunas].valueCodeableConcept = #Santiago
* contact.extension[Region].valueCodeableConcept = #RegióMetropolitana
* contact.name.family = "Gonzalez"
* contact.name.given = "Maria"
* contact.relationship.coding.code = #N
* contact.relationship.coding.display = "Next of Kin"
* contact.telecom.system = #phone
* contact.telecom.value = "+56912345678"
* contact.telecom.use = #mobile
* contact.telecom.system = #email
* contact.telecom.value = "maria.gonzalez@example.com"
* contact.telecom.use = #home
* contact.telecom.extension[MyTelecomExtension].valueString = "Correo principal"


/* 
* identifier 1..* 
* extension contains Geolocation named Geolocalizacion 1..1 
* extension contains Comunas named Comuna 1..1 
* extension contains Provincia named Provincia 1..1 
* extension contains Region named Region 1..1 
* contact
* contact.extension[IdContacto] 1..* 
* contact.name.family 1..1
* contact.name.given 1..1
* contact.relationship 1..1
* contact.telecom 1..* MS
* contact.telecom.value ^short = "Detalles de Contacto"
* contact.telecom.value ^definition = "Detalles del Contacto, comunmente el o los mas usados (Ej: Teléfono fijo, móvil, email, etc.)"
* contact.telecom.value[MyTelecomExtension].valueString 
* contact.extension contains Geolocation named Geolocalizacion 0..1 
* contact.extension contains Provincia named Provincia 1..1 
* contact.extension contains Comunas named Comuna 1..1 
* contact.extension contains Region named Región 1..1

/*Instance: PatientExample
InstanceOf: Paciente 
Description: "An example of a patient with a license to krill."
* name
  * given[0] = "James"
  * family = "Pond"
* SexoBiologico = #HOMBRE
/*
* Nacionalidad = "Chileno"
* birthDate = "AAAA-MM-DD"
* identifier = "XX.XXX.XXX-X"
* Geolocalizacion = "Gregorio Mira, #123"

* extension contains Comunas named Comuna 1..1 
* extension contains Provincia named Provincia 1..1 
* extension contains Region named Region 1..1 
/** contac[name] 1..* Como hago este campo obligatorio de 1 a muchos
* contact
* contact.extension[IdContacto] 1..* 
* contact.name.family 1..1
* contact.name.given 1..1
* contact.relationship 1..1
* contact.telecom 1..* MS
* contact.telecom.value ^short = "Detalles de Contacto"
* contact.telecom.value ^definition = "Detalles del Contacto, comunmente el o los mas usados (Ej: Teléfono fijo, móvil, email, etc.)"
* contact.telecom.value[MyTelecomExtension].valueString 
* contact.extension contains Geolocation named Geolocalizacion 0..1 
* contact.extension contains Provincia named Provincia 1..1 
* contact.extension contains Comunas named Comuna 1..1 
* contact.extension contains Region named Region 1..1
*/ 

