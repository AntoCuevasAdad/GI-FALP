Profile: Paciente 
Parent: CorePacienteCl
Id: Paciente
Title: "Paciente"
Description: "Perfil de Paciente"

* extension contains SexoBiologico named Sexobiologico 1..1 
* extension[SexoBiologico].valueCodeableConcept 1..1
// * extension contains SexoBiologico named Sexobiologico 1..1 
* extension contains Nacionalidad named Nacionalidad 1..*
* name 1..1 
* birthDate 1..1
* identifier 1..* 
* address
* address only cl-address
  * extension[Geolocalizacion] 0..1
  * city 1..1
  * district 1..1
  * state 1..1 

* contact
* contact.extension.url = "BackboneElement"
* contact.extension 1..* 
* contact.extension[IdContacto] //^short = "Identificación del Contacto"
* contact.extension[IdContacto] //^definition = "Extensión para declarar identificación del contacto y la procedencia de esta"

* contact.name.family 1..1
* contact.name.given 1..1

* contact.relationship 1..1

* contact.telecom 1..* 
* contact.telecom.value ^short = "Detalles de Contacto"
* contact.telecom.value ^definition = "Detalles del Contacto, comunmente el o los mas usados (Ej: Teléfono fijo, móvil, email, etc.)"
//* contact.telecom.[MyTelecomExtension].valueString 
* contact.address only cl-address
* contact.address
  * state 1..1  


