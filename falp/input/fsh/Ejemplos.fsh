Instance: EjPaciente
InstanceOf: Paciente 
Usage: #Example
Title: "Ejemplo Paciente"
Description: "Ejemplo del Perfil Paciente"

//* id = "example-paciente"
* meta.profile = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CorePacienteCl"
//* extension.url = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSSexoBiologico"

* extension[Sexobiologico].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSSexoBiologico"
* extension[Sexobiologico].valueCodeableConcept.coding = #1 "Hombre"

//* extension.url = "https://hl7chile.cl/fhir/ig/clcore/ValueSet/CodPais" 
* extension[Nacionalidad].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSPaises"
* extension[Nacionalidad].valueCodeableConcept.coding.code = #152 "Chile"

//* extension[Nacionalidad].valueCodeableConcept.coding.text = "Chile"
//* extension[Nacionalidad].valueCodeableConcept.coding.display = "Chile"

* name[NombreOficial].family = "Perez"
* name[NombreOficial].given[0] = "Juana"
* name[NombreOficial].use = #official

* birthDate = "1980-01-01"

* identifier.use = #secondary
* identifier.type = #PPN
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier.type.coding.display = "Passport Number"
* identifier.value = "P102145874"

* active = true

* address.use = #home
* address.line[0] = "Calle 6 Norte, 52, pieza 802"

* address.city.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
* address.city.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL"
* address.city.extension.valueCodeableConcept.coding.code = #13101 "Santiago Centro"

* address.district.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl"
* address.district.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodProvinciasCL"
* address.district.extension.valueCodeableConcept.coding.code = #131 "Santiago"

* address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension.valueCodeableConcept.coding.code = #13 "RegionMetropolitana"

//* contact.extension[IdContacto].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/IdContacto"
//* contact.extension[IdContacto].value = "8987321-7"

* contact.extension.url = "BackboneElement"
* contact.extension.extension[0].url = "tutId"
* contact.extension.extension[=].valueIdentifier.type = #NNCHL "Chile"  //código DNI
* contact.extension.extension[=].valueIdentifier.system = "http://regcivil.cl/Validacion/RUN"
* contact.extension.extension[=].valueIdentifier.value = "8987321-7"
* contact.extension.extension[+].url = "docProc"
* contact.extension.extension[=].valueCodeableConcept = #152 "Chile" //CODIGO  PAIS 


* contact.relationship.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0131"
* contact.relationship.coding.code = #N "Next of Kin"

/*
* contact.extension.extension.url = "http://hl7.org/fhir/ValueSet/identifier-use"
* contact.extension[IdContacto].extension[0].valueIdentifier.use = #official "Official"
* contact.extension[IdContacto].extension[0].valueIdentifier.system = "http://hl7.org/fhir/identifier-use"
* contact.extension[IdContacto].extension[0].valueIdentifier.value = "8987321-7"
*/

* contact.address.use = #home
* contact.address.line[0] = "Gregorio Mira 123" 

* contact.address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* contact.address.state.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/RegionesCl"
* contact.address.state.extension.valueCodeableConcept.coding.code = #13 "RegionMetropolitana"
//* contact.address.state.extension.valueCodeableConcept.coding.display = "RegionMetropolitana"

//* contact.name.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/IdContacto" //falta agregar identificaor del acompañante revisar bien todo lo que tenga que ver con el contacto 
* contact.name.use =  #official
* contact.name.family = "Gonzalez"
* contact.name.given[0] = "Maria"
 
//* contact.extension.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/IdContacto"
//* contact.extension.extension[IdContacto].valueIdentifier.use = #official "Official"
//* contact.extension.extension.valuIdentifier.type = #PPN 
//* contact.extension.extension[tutId].valueIdentifier.type = #PPN 
//* contact.extension.extension[tutId].valueIdentifier.use = #152 "Chile"
//* contact.extension.extension.valueIdentifier.value = "12.435.789-k"


//* contact.relationship.url = "http://hl7.org/fhir/ValueSet/patient-contactrelationship"
//* contact.relationship.coding.display = "Next of Kin"

//* contact.telecom = "ContactPoint"
* contact.telecom[0].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-TEL-address"
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "+56912345678"
* contact.telecom[0].use = #mobile
* contact.telecom[+].system = #email
* contact.telecom[=].value = "maria.gonzalez@example.com"
* contact.telecom[=].use = #home

//* contact.telecom[0].extension.url = "http://hl7.org/fhir/StructureDefinition/Extension"
* contact.telecom[0].extension.valueString = "maria.gonzalez@example.cl"

Instance: EjPrestacionSalud
InstanceOf: PrestacionSalud
Usage: #Example
Title: "Ejemplo Presentación de Salud"
Description: "Ejemplo de Perfil Prestación de Salud" 

* id = "example-coverage"
* status = #active
* beneficiary = Reference(EjPaciente)
* payor[0] = Reference(example-Organizacion)

* extension[PrevisionSalud].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSPrevision"
* extension[PrevisionSalud].valueCodeableConcept.coding.code = #1 "FONASA"

* extension[TramosFonasa].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSTramosFonasa"
* extension[TramosFonasa].valueCodeableConcept.coding.code = #C "TRAMO C"

* extension[SegCapa].valueBoolean = true

* extension[NombreSeguro].valueString = "MEGA TRONIX 1000"

* extension[Referencia].valueReference = Reference(EjPaciente)

//SOLICITUD DEL PROCEDIMIENTO //
Instance: EjSolicitudProcedimiento
InstanceOf: SolicitudProcedimiento
Usage: #Example 
Title: "Ejemplo de Solicitud del Procedimiento"
Description: "Ejemplo del Perfil Solicitud del Procedimiento " 

* id = "example-SolicitudProcedimiento"
* status = #completed
* subject = Reference(EjPaciente) 

* extension[FechaSolicitud].valueDateTime = "2024-07-17"

* extension[TipoProcedimiento].valueString = "BIOPSIA"

* extension[UrgenciaProcedimiento].valueCodeableConcept.coding.system = "http://falp.cl/CodeSystem/CSurgProcedimiento"
* extension[UrgenciaProcedimiento].valueCodeableConcept.coding = #MEDIA "MEDIA"

* extension[Observacion].valueString = "Alergica a la anestesia"

* extension[Referencia].valueReference = Reference(EjPaciente)

//REPORTE DEL PROCEDIMIENTO //

Instance: EjReporteProcedimiento
InstanceOf: ReporteProcedimiento
Usage: #Example 
Title: "Ejemplo de Reporte del Procedimiento"
Description: "Ejemplo del Perfil Reporte del Procedimiento" 

* id = "example-ReporteProcedimiento"
* subject = Reference(EjPaciente) 

* extension[FechaProcedimiento].valueDateTime = "2024-07-03"
* extension[FechaProcedimiento].valueDateTime = "2024-05-15"

* extension[TipoProcedimiento].valueString = "BIOPSIA"

* extension[Observacion].valueString = "Ninguna"

* extension[Referencia].valueReference = Reference(EjPaciente)
 
// HISTORIA CLINICA //

Instance: EjHistorialClinico
InstanceOf: HistorialClinico
Usage: #Example 
Title: "Ejemplo Historia Clínica"
Description: "Ejemplo del Perfil Historia Clínica"  

//* id = "example-HistoriaClinica"
* subject = Reference(EjPaciente) 

* extension[FechaDiagnostica].valueDateTime = "2024-08-02"

* extension[TerminoClinico].valueString = #064 "TUMOR MALIGNO DEL RIÑON, EXCEPTO DE LA PELVIS RENAL" // Para un futuro agregar wel terminio clinico en formato estandarizado en una tabla en CIE-10 

* extension[SeveridadDiagnostico].valueCodeableConcept.coding.system = "http://falp.cl/CodeSystem/CSseveridadDiagnostica"
* extension[SeveridadDiagnostico].valueCodeableConcept.coding = #MODERADO "MODERADO"

* extension[Observacion].valueString = "RIÑON DERECHO"

* extension[Referencia].valueReference = Reference(EjPaciente)

// PRESTADOR INDIVIDUAL  //
Instance: EjPrestadorIndividual
InstanceOf: PrestadorIndividual
Usage: #Example 
Title: "Ejemplo Prestador Individual"
Description: "Ejemplo del Perfil Prestador Individual" 

* id = "example-PrestadorIndividual"
* name.family = "Gonzaléz"
* name.given = "Pedro"
* birthDate = "1980-12-25" 
//* extension[Nacionalidad].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
//* extension[Nacionalidad].valueCodeableConcept.coding.code = #CL "Chile" 
//* extension[Nacionalidad].valueCodeableConcept.coding.display = "Chile"
//* identifier.use = #official
* identifier.type = #MD "Medical License number"
* identifier.system = "https://hl7.org/fhir/R4/v2/0203/index.html"
* identifier.value = "akxpkx"
//* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
//* identifier.type.coding.code = #152
//* identifier.type.coding.display = "Passport Number"

* address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/RegionesCL"
* address.state.extension.valueCodeableConcept.coding.code = #13 "RegionMetropolitana"

* qualification[Cert].code.coding.system = "https://api.minsal.cl/v1/catalogos/profesiones/"
* qualification[Cert].code.coding.code = #01

* extension[Mension].valueString = "NEFROLOGO" 

//* qualification[SubEsp].code.coding.system = "https://api.minsal.cl/v1/catalogos/tiposEspecialidadMedica/"
* qualification[SubEsp].code.coding.code = #4

// ORGANIZACIÓN // 
Instance: EjOrganizacion
InstanceOf: Organizacion
Usage: #Example 
Title: "Ejemplo Organización"
Description: "Ejemplo del Perfil Organización"  

* id = "example-Organizacion"
* extension[TipoSistemaSalud].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSTipoSistemaSalud"
* extension[TipoSistemaSalud].valueCodeableConcept.coding = #1 "Público"

* identifier[0].system = "http://example.org/identifiers"
* identifier[0].value = "7777777-7"

* extension[TipoEstablecimientosPublicos].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSTipoEstablecimientosPublicos"
* extension[TipoEstablecimientosPublicos].valueCodeableConcept.coding.code = #4 "Establecimientos Hospitalarios"

* extension[NivelAtencion].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSNivelAtencion"
* extension[NivelAtencion].valueCodeableConcept.coding.code = #3 "Nivel Terciario"

* extension[TipoPertinenciaEstab].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSTipoPertinenciaEstab"
* extension[TipoPertinenciaEstab].valueCodeableConcept.coding.code = #1 "Perteneciente al Sistema Nacional de Servicios de Salud"

* address.city.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
* address.city.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL"
* address.city.extension.valueCodeableConcept.coding.code = #13101 "Santiago Centro"

* address.district.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl"
* address.district.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodProvinciasCL"
* address.district.extension.valueCodeableConcept.coding.code = #131 "Santiago"

* address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/RegionesCL"
* address.state.extension.valueCodeableConcept.coding.code = #13 "RegionMetropolitana"

// LOCALIZACIÓN // 

Instance: EjLocalizacion
InstanceOf: Localizacion
Usage: #Example 
Title: "Ejemplo Localizacion"
Description: "Ejemplo del Perfil Localizacion"  

* id = "example-Localizacion"
* status = #active
* position.latitude = 51.5074
* position.longitude = -0.1278 
* managingOrganization = Reference(EjOrganizacion)
