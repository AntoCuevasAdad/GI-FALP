Profile:  Organizacion
Parent: CoreOrganizacionCl
Id: Organizacion
Title: "Organzación en Salud"
Description: "Perfil de la Organización de Salud"

* extension contains TipoSistemaSalud named TipoSistemaSalud 1..1
* identifier 1..*
* extension contains TipoEstablecimientosPublicos named TipoEstablecimientosPublicos 1..1 
* extension contains NivelAtencion named NivelAtencion 1..1 
* extension contains TipoPertinenciaEstab named TipoPertinenciaEstab 1..1
* address only cl-address
* address 
//* extension contains Geolocation named Geolocalizacion 0..1 
//* extension contains Comunas named Comuna 1..1
//* extension contains Provincia named Provincia 1..1
//* extension contains Region  named Region 1..1 


