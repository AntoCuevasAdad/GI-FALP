
/////////////////////////////////////////////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////////////////////////////////////////////

ValueSet: VSurgProcedimiento
Id: VSurgProcedimiento
Title: "Urgencia del Procedimiento"
Description: "Código asociados a a la urgencia del Procedimiento"
* include codes from system CSurgProcedimiento
* ^status = #active
* ^experimental = false

////////////////////////////////////////////////////////////////////////////////////////////////////////////

ValueSet: VSseveridadDiagnostica
Id: VSseveridadDiagnostica
Title: "VSseveridadDiagnostica"
Description: "Valoración subjetiva de la gravedad de la enfermedad evaluada por el clínico"
* include codes from system CSseveridadDiagnostica
* ^status = #active
* ^experimental = false

//QUESTIONARIO//
ValueSet: VSDiab
Id: VSDiab
Title: "cccc"
Description: "ccc"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* codes from system CSDiab