// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: Paciente 
Parent: CorePacienteCl
Id: Paciente
Title: "Paciente"
Description: "Perfil de Paciente"
* extension contains SexoBiologico named Sexobiologico 1..1 
* extension contains Nacionalidad named Nacionalidad 1..*
* name 1..1
* birthDate 1..1
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
* contact.telecom 1..* 
* contact.telecom.value ^short = "Detalles de Contacto"
* contact.telecom.value ^definition = "Detalles del Contacto, comunmente el o los mas usados (Ej: Teléfono fijo, móvil, email, etc.)"
* contact.telecom.value[MyTelecomExtension].valueString 
* contact.extension contains Geolocalizacion named Geolocalizacion 0..1 
* contact.extension contains Provincia named Provincia 1..1 
* contact.extension contains Comunas named Comuna 1..1 
* contact.extension contains Region named Región 1..1



