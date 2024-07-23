Profile: SolicitudProcedimiento
Parent: Condition
Id: SolicitudProcedimiento
Title: "Solicitud del Procedimiento"
Description: "Perfil de Solicitud del Procedimiento"


* extension contains FechaSolicitud named FechaSolicitud 1..1 
* extension[FechaSolicitud].valueDateTime 1..1
* extension[FechaSolicitud].valueDateTime MS
* extension[FechaSolicitud].valueDateTime ^short = "Fecha en que se realizó la solicitud del procedimiento"
* extension contains TipoProcedimiento named TiposProcedimientos 1..1 
* extension contains UrgenciaProcedimiento named UrgenciaProcedimiento 0..1
* extension contains Observacion named Observación 0..1

* extension contains Referencia named Referencia 1..1 
