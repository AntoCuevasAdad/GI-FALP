Profile: PrestadorIndividual 
Parent: CorePrestadorCl
Id: PrestadorIndividual
Title: "Prestador Indivual"
Description: "Perfil del Prestador Individual"

* name 1..1 MS
* birthDate
  * ^short = "Fecha de nacimiento del prestador"
  * ^definition = "Fecha de nacimiento del prestador" 
* extension contains https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises named Nacionalidad  0..* 
* identifier  1..* 
* extension contains Region named Región 1..1
* qualification[Cert] 1..*
* extension contains Mension named Mensión 0..1 
* qualification[Esp] 1..*
* qualification[SubEsp] 0..1 