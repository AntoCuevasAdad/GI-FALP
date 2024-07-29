/* 

//PRESTACION DE SALUD// 
Instance: PrestacionSalud
InstanceOf: PrestacionSalud
Usage: #Example
Title: "Example Presentación de Salud"
Description: "An example Prestación de Salud instance." 

* id = "example-coverage"
* status = #active
* beneficiary = Reference(example-Paciente)
* payor[0] = Reference(examplePrestadorIndividual|exampleOrganizacion)
* extension[PrevisionSalud].valueCodeableConcept = #1 "FONASA"
* extension[TramosFonasa].valueCodeableConcept = #C "TRAMO C"
* extension[SegCapa].valueBoolean = true
* extension[NombreSeguro].valueString = "MEGA TRONIX 1000"
* extension[Referencia].valueReference = Reference(example-Paciente)

//SOLICITUD DEL PROCEDIMIENTO //
Instance: SolicitudProcedimiento
InstanceOf: Condition
Usage: #Example 
Title: "Solicitud del Procedimiento"
Description: "An example Solicitud del Procedimiento instance." 

* id = "example-SolicitudProcedimiento"
* subject = Reference(example-Paciente) 
* extension[FechaSolicitud].valueDateTime = "2024-07-17"
* extension[TipoProcedimiento].valueString = "BIOPSIA"
//* extension[UrgenciaProcedimiento].valueCodeableConcept.coding.system = "VSurgProcedimiento"
* extension[UrgenciaProcedimiento].valueCodeableConcept.coding.code = #MEDIA "MEDIA"
* extension[Observacion].valueString = "Alergica a la anestecia"

//REPORTE DEL PROCEDIMIENTO //

Instance: ReporteProcedimiento
InstanceOf: Procedure
Usage: #Example 
Title: "Reporte del Procedimiento"
Description: "An example Reporte del Procedimiento instance." 


* id = "example-ReporteProcedimiento"
* status = #completed
* subject = Reference(example-Paciente) 
* extension[FechaProcedimiento].valueDateTime = "2024-07-03"
* extension[FechaProcedimiento].valueDateTime = "2024-05-15"
* extension[TipoProcedimiento].valueString = "BIOPSIA"
* extension[Observacion].valueString = "Ninguna"

// HISTORIA CLINICA //

Instance: HistoriaClinica
InstanceOf: CoreDiagnosticoCl
Usage: #Example 
Title: "Example-HistoriaClínica"
Description: "An example Historia Clínica instance."  

* id = "example-HistoriaClinica"
* subject = Reference(example-Paciente) 
* extension[FechaDiagnostica].valueDateTime = "2024-08-02"
* extension[TerminoClinico].valueString = "CANCER AL RIÑON"
* extension[SeveridadDiagnostico].valueCodeableConcept = #MODERADO "MODERADO"
* extension[Observacion].valueString = "RIÑON DERECHO"

// PRESTADOR INDIVIDUAL  //
Instance: PrestadorIndividual
InstanceOf: CorePrestadorCl
Usage: #Example 
Title: "Example Prestador Individual"
Description: "An example Prestador individual instance." 

* id = "example-PrestadorIndividual"
* name.family = "Gonzaléz"
* name.given = "Pedro"
* birthDate = "1980-12-25" 
//* extension[Nacionalidad].valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
* extension[Nacionalidad].valueCodeableConcept.coding.code = #CL
* extension[Nacionalidad].valueCodeableConcept.coding.display = "Chile"
* identifier.system = "http://example.org/identifiers"
* identifier.value = "14666333-2"
* address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension.valueCodeableConcept = #RegionMetropolitana
* qualification[Cert].code.coding.system = "https://api.minsal.cl/v1/catalogos/profesiones/"
* qualification[Cert].code.coding.code = #01
* extension[Mension].valueString = "NEFROLOGO" 
* qualification[SubEsp].code.coding.code = #4

// ORGANIZACIÓN // 
Instance: Organizacion
InstanceOf: CoreOrganizacionCl
Usage: #Example 
Title: "Example-Organización"
Description: "An example Organización instance."  

* id = "exampleOrganizacion"
* extension[TipoSistemaSalud].valueCodeableConcept = #1
* identifier[0].system = "http://example.org/identifiers"
* identifier[0].value = "7777777-7"
* extension[TipoEstablecimientosPublicos].valueCodeableConcept = #4
* extension[NivelAtencion].valueCodeableConcept = #3
* extension[TipoPertinenciaEstab].valueCodeableConcept = #1
* address.line = "Blanco encalada 155"
* address.city.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
* address.city.extension.valueCodeableConcept = #Santiago
* address.district.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl"
* address.district.extension.valueCodeableConcept = #Santiago
* address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension.valueCodeableConcept = #RegionMetropolitana


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
* managingOrganization = Reference(exampleOrganizacion)

*/