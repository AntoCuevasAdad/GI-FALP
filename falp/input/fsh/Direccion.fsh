Profile: ClAddress
Parent: Address
Id: ClAddress
Title: "CL Address"
Description: "Variable dirección"

* extension ^definition = "Formato Chileno para la definición de direcciones"
* extension contains Geolocation named Geolocalizacion 0..1 MS
* use MS
* use ^short = "Definición del tipo de domicilio home | work | temp | old (requerido)"
* use ^definition = "Se especifica el tipo de dirección notificada. Esto debe ser segun los códigos definidos por HL7 FHIR"
* line ..1 MS
* line ^short = "Calle o avenida, numero y casa o depto"
* line ^definition = "Aquí se escribe toda la dirección completa"
* city MS
* city ^short = "Campo para Comuna de residencia"
* city ^definition = "Campo para Comuna de residencia."
* city.extension ^short = "Código de Comunas"
* city.extension ^definition = "Código de Comunas"
* city.extension contains https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl named comunas 0..1 MS
* district MS
* district ^short = "Campo para Provincia de Residencia"
* district ^definition = "Campo para Provincia de Residencia. Se usa el valueSet de códigos de provicias definidos a nivel naciona."
* district.extension ^short = "Código de Regiones"
* district.extension ^definition = "Código de Regiones"
* district.extension contains https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl named provincias 0..1 MS
* state MS
* state ^short = "Campo para la Región"
* state ^definition = "Campo Región. Se usa el valueSet de códigos de regiones definidos a nivel naciona."
* state.extension ^short = "Código de Regiones"
* state.extension ^definition = "Código de Regiones"
* state.extension contains https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl named regiones 0..1 MS
//* country MS
//* country ^short = "Campo para País de Residencia"
//* country ^definition = "Campo para País de Residencia"
//* country.extension ^short = "Código de Países"
//* country.extension ^definition = "Código de Países"
//* country.extension contains https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises named paises 0..1 MS

