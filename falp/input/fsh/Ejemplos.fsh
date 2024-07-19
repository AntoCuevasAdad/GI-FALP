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
* name.family = "Perez"
* name.given = "Juan"
* birthDate = "1980-01-01"
* identifier.system = #CHILE
* identifier.value = "12345678-9"
* address.use = #home
* address.line = "Calle 6 Norte, 52, pieza 802"
* address.city.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
* address.city.extension.valueCodeableConcept = #Santiago
* address.district.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl"
* address.district.extension.valueCodeableConcept = #Santiago
* address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension.valueCodeableConcept = #RegionMetropolitana


//* identifier.system = #CHILE
* contact.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/IdContacto"
* contact.extension.valueIdentifier.value = "8987321-7"
* contact.address.use = #home
* contact.address.line = "Gregorio Mira 123"
* contact.address.city.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
* contact.address.city.extension.valueCodeableConcept = #Santiago
* contact.address.district.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl"
* contact.address.district.extension.valueCodeableConcept = #Santiago
* contact.address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension.valueCodeableConcept = #RegionMetropolitana
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
* contact.telecom.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/MyTelecomExtension"
* contact.telecom.extension[MyTelecomExtension].valueString = "ejemplo@correoaompañante.cl"

/*

//PRESTACION DE SALUD// 
Instance: PrestacionSalud
InstanceOf: PrestacionSalud
Usage: #Example
Title: "Example Presentación de Salud"
Description: "An example Prestación de Salud instance." 

* id = "example-coverage"
* status = #active
* beneficiary = Reference(ExamplePaciente)
* payor[0] = Reference(ExamplePayor)
* extension[PrevisionSalud].valueCodeableConcept = #1
* extension[TramosFonasa].valueCodeableConcept = #C
* extension[SegCapa].valueBoolean = true
* extension[NombreSeguro].valueString = "MEGA TRONIX 1000"

//SOLICITUD DEL PROCEDIMIENTO //
Instance: SolicitudProcedimiento
InstanceOf: Condition
Usage: #Example 
Title: "Solicitud del Procedimiento"
Description: "An example Solicitud del Procedimiento instance." 
 
* id = "example-condition"
* subject = Reference(ExamplePaciente) 
* extension[FechaSolicitud].valueDateTime = "2024-07-17"
* extension[TipoProcedimiento].valueString = "BIOPSIA"
* extension[UrgenciaProcedimiento].valueCodeableConcept = #MEDIA
//* extension[Observacion].valueString = ""

//REPORTE DEL PROCEDIMIENTO //

Instance: ReporteProcedimiento
InstanceOf: Procedure
Usage: #Example 
Title: "Reporte del Procedimiento"
Description: "An example Reporte del Procedimiento instance." 


* id = "example-procedure"
* status = #completed
* subject = Reference(ExamplePaciente) 
* extension[FechaSolicitud].valueDateTime = "2024-07-03"
* extension[FechaProcedimiento].valueDateTime = "2024-05-15"
* extension[TipoProcedimiento].valueString = "BIOPSIA"
//* extension[Observación] =

// HISTORIA CLINICA //

Instance: HistoriaClinica
InstanceOf: CoreDiagnosticoCl
Usage: #Example 
Title: "Example-Historia-Clínica"
Description: "An example Historia Clínica instance."  

* id = "example-HistoriaClinica"
* subject = Reference(ExamplePaciente) 
* extension[FechaDiagnostica].valueDateTime = "2024-08-02"
* extension[TerminoClinico].valueString = "CANCER AL RIÑON"
* extension[SeveridadDiagnostico].valueCodeableConcept = #MODERADO
* extension[ObservacionD].valueString = "RIÑON DERECHO"

// PRESTADOR INDIVIDUAL  //
Instance: PrestadorIndividual
InstanceOf: CorePrestadorCl
Usage: #Example 
Title: "Example Prestador Individual"
Description: "An example Prestador individual instance." 

* id = "example-Prestador-Individual"
* name.family = "Gonzaléz"
* name.given = "Pedro"
* birthDate = "1980-12-25" 
* extension[Nacionalidad].valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
* extension[Nacionalidad].valueCodeableConcept.coding.code = #CL
* extension[Nacionalidad].valueCodeableConcept.coding.display = "Chile"
* identifier.system = "http://example.org/identifiers"
* identifier.value = "14666333-2"
* extension[Region].valueCodeableConcept = #RegiónMetropolitana
* qualification[Cert].code.coding.code = #01
//* extension[qualification][0].extension[Cert].valueCodeableConcept = #1 se cambio la cardinalidad por el ejemplo 
//* extension[Mension].valueString = 
//* extension[qualification][0].extension[Esp].valueCodeableConcept = #4 se cambio la cardinalidad por el ejemplo 
//* qualification[SubEsp].valueCodeableConcept = # 

// ORGANIZACIÓN // 
Instance: Organizacion
InstanceOf: CoreOrganizacionCl
Usage: #Example 
Title: "Example-Organización"
Description: "An example Organización instance."  

* extension[TipoSistemaSalud].valueCodeableConcept = #1
* identifier[0].system = "http://example.org/identifiers"
* identifier[0].value = "7777777-7"
* extension[TipoEstablecimientosPublicos].valueCodeableConcept = #4
* extension[NivelAtencion].valueCodeableConcept = #3
* extension[TipoPertinenciaEstab].valueCodeableConcept = #1
* extension[Geolocalizacion].valueString = "La la land 1234"
* extension[Comunas].valueCodeableConcept = #Santiago
* extension[Provincia].valueCodeableConcept = #Santiago
* extension[Region].valueCodeableConcept = #RegiónMetropolitana
*/

// LOCALIZACIÓN // 

Instance: Localizacion
InstanceOf: CoreLocalizacionCl
Usage: #Example 
Title: "Example-Localizacion"
Description: "An example Localizacion instance."  

* id = "example-Localizacion"
* status = #active
* position.latitude = 51.5074
* position.longitude = -0.1278 
* managingOrganization = Reference(ExampleOrganizacion)