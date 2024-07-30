Instance: PacienteExample
InstanceOf: Paciente 
Usage: #Example
Title: "Example Patient"
Description: "An example Patient instance."

* id = "example-paciente"
//* meta.profile = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CorePacienteCl"
//* extension.url = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSSexoBiologico"
* extension[Sexobiologico].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSSexoBiologico"
* extension[Sexobiologico].valueCodeableConcept.coding =  #1 "Hombre"
//* extension[Sexobiologico].valueCodeableConcept.text = "Hombre"
//* extension.url = "https://hl7chile.cl/fhir/ig/clcore/ValueSet/CodPais" 
* extension[Nacionalidad].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSPaises"
* extension[Nacionalidad].valueCodeableConcept.coding.code = #152 "Chile"
//* extension[Nacionalidad].valueCodeableConcept.coding.text = "Chile"
//* extension[Nacionalidad].valueCodeableConcept.coding.display = "Chile"
* name[NombreOficial].family = "Perez"
* name[NombreOficial].given[0] = "Juan"
* name[NombreOficial].use = #official
* birthDate = "1980-01-01"
* identifier.use = #secondary
* identifier.type = #PPN
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
//* identifier.type.coding.code = #152
* identifier.type.coding.display = "Passport Number"
* identifier.value = "P102145874"
* active = true
* address.use = #home
* address.line[0] = "Calle 6 Norte, 52, pieza 802"
//* address.city.extension.valueCodeableConcept.coding.code = #13101 "Santiago Centro"
//* address.city.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
//* address.district.extension.valueCodeableConcept.coding.code = #131 "Santiago"
//* address.district.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCL"
* address.city.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
* address.city.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL"
* address.city.extension.valueCodeableConcept.coding.code = #13101 "Santiago Centro"
//* address.city.extension.valueCodeableConcept.coding.display = "Santiago Centro"
* address.district.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl"
* address.district.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodProvinciasCL"
* address.district.extension.valueCodeableConcept.coding.code = #131 "Santiago"
//* address.district.extension.valueCodeableConcept.coding.display = "Santiago"
* address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension.valueCodeableConcept.coding.code = #13 "RegionMetropolitana"
//* address.state.extension.valueCodeableConcept.coding.display = "RegionMetropolitana"
* contact.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/IdContacto"
* contact.extension.valueIdentifier.use = #requerid 
* contact.extension[0].valueIdentifier.system = "https://hl7.org/fhir/R4/v2/0203"
* contact.extension[0].valueIdentifier.value = "8987321-7"
* contact.address.use = #home
* contact.address.line[0] = "Gregorio Mira 123" 
* contact.address.state.extension.url = "https://hl7chile.cl/fhir/ig/StructureDefinition/RegionCl"
* contact.address.state.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/RegionesCL"
* contact.address.state.extension.valueCodeableConcept.coding.code = #13 "RegionMetropolitana"
//* contact.address.state.extension.valueCodeableConcept.coding.display = "RegionMetropolitana"
* contact.name.use =  #official
* contact.name.family = "Gonzalez"
* contact.name.given[0] = "Maria"
* contact.extension.url = "http://terminology.hl7.org/CodeSystem/v2-0131"
* contact.relationship.coding.code = #N
* contact.relationship.coding.display = "Next of Kin"
//* contact.telecom[0].url = "https://hl7.org/fhir/R4/codesystem-contact-point-system.html"
* contact.telecom[0].extension.url = "http://hl7.org/fhir/ValueSet/contact-point-system"
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "+56912345678"
* contact.telecom[0].use = #mobile
* contact.telecom[0].system = #email
* contact.telecom[0].value = "maria.gonzalez@example.com"
* contact.telecom[0].use = #home
//* contact.telecom[0].extension[MyTelecomExtension].valueUrl = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/MyTelecomExtension"
* contact.telecom[0].extension[MyTelecomExtension].valueString = "ejemplo@correoaompañante.cl"

Instance: PrestacionSalud
InstanceOf: PrestacionSalud
Usage: #Example
Title: "Example Presentación de Salud"
Description: "An example Prestación de Salud instance." 

* id = "example-coverage"
* status = #active
* beneficiary = Reference(PacienteExample)
* payor[0] = Reference(example-Organizacion)
* extension[PrevisionSalud].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSPrevision"
* extension[PrevisionSalud].valueCodeableConcept.coding.code = #1 "FONASA"
* extension[TramosFonasa].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSTramosFonasa"
* extension[TramosFonasa].valueCodeableConcept = #C "TRAMO C"
* extension[SegCapa].valueBoolean = true
* extension[NombreSeguro].valueString = "MEGA TRONIX 1000"
* extension[Referencia].valueReference = Reference(PacienteExample)

//SOLICITUD DEL PROCEDIMIENTO //
Instance: SolicitudProcedimiento
InstanceOf: Procedure
Usage: #Example 
Title: "Solicitud del Procedimiento"
Description: "An example Solicitud del Procedimiento instance." 

* id = "example-SolicitudProcedimiento"
* status = #completed
* subject = Reference(PacienteExample) 
* extension[FechaSolicitud].valueDateTime = "2024-07-17"
* extension[TipoProcedimiento].valueString = "BIOPSIA"
* extension[UrgenciaProcedimiento].valueCodeableConcept.coding.system = "http://falp.cl/ValueSet/VSurgProcedimiento"
* extension[UrgenciaProcedimiento].valueCodeableConcept.coding.code = #MEDIA "MEDIA"
* extension[Observacion].valueString = "Alergica a la anestesia"

//REPORTE DEL PROCEDIMIENTO //

Instance: ReporteProcedimiento
InstanceOf: Procedure
Usage: #Example 
Title: "Reporte del Procedimiento"
Description: "An example Reporte del Procedimiento instance." 


* id = "example-ReporteProcedimiento"
* status = #completed
* subject = Reference(example-paciente) 
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
* subject = Reference(example-paciente) 
* extension[FechaDiagnostica].valueDateTime = "2024-08-02"
* extension[TerminoClinico].valueString = "CANCER AL RIÑON"
* extension[SeveridadDiagnostico].valueCodeableConcept.coding.system = "http://falp.cl/ValueSet/VSseveridadDiagnostica"
* extension[SeveridadDiagnostico].valueCodeableConcept.coding = #MODERADO "MODERADO"
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
//* extension[Nacionalidad].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
//* extension[Nacionalidad].valueCodeableConcept.coding.code = #CL "Chile" 
//* extension[Nacionalidad].valueCodeableConcept.coding.display = "Chile"
* identifier.system = "http://example.org/identifiers"
* identifier.value = "14666333-2"
* address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/RegionesCL"
* address.state.extension.valueCodeableConcept.coding.code = #13 "RegionMetropolitana"
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

* id = "example-Organizacion"
* extension[TipoSistemaSalud].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSTipoSistemaSalud"
* extension[TipoSistemaSalud].valueCodeableConcept.coding = #1 "Público"
* identifier[0].system = "http://example.org/identifiers"
* identifier[0].value = "7777777-7"
* extension[TipoEstablecimientosPublicos].valueCodeableConcept.coding.system = "https://build.fhir.org/ig/Minsal-CL/eis/CodeSystem-CSTipoEstablecimientosPublicos"
* extension[TipoEstablecimientosPublicos].valueCodeableConcept.coding.code = #4 "Establecimientos Hospitalarios"
* extension[NivelAtencion].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSNivelAtencion"
* extension[NivelAtencion].valueCodeableConcept.coding.code = #3 "Nivel Terciario"
* extension[TipoPertinenciaEstab].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSTipoPertinenciaEstab"
* extension[TipoPertinenciaEstab].valueCodeableConcept.coding.code = #1 "Perteneciente al Sistema Nacional de Servicios de Salud"
* address.city.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
* address.city.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL"
* address.city.extension.valueCodeableConcept.coding.code = #13101 "Santiago Centro"
//* address.city.extension.valueCodeableConcept.coding.display = "Santiago Centro"
* address.district.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl"
* address.district.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodProvinciasCL"
* address.district.extension.valueCodeableConcept.coding.code = #131 "Santiago"
//* address.district.extension.valueCodeableConcept.coding.display = "Santiago"
* address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/RegionesCL"
* address.state.extension.valueCodeableConcept.coding.code = #13 "RegionMetropolitana"
//* address.state.extension.valueCodeableConcept.coding.display = "RegionMetropolitana"

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
* managingOrganization = Reference(example-Organizacion)
