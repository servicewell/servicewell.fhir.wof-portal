Instance: FindAppointmentsRequestExample
InstanceOf: Parameters
Usage: #example
Title: "Example request for Appointment/$find"
Description: "FHIR R4 Parameters example for invoking Appointment/$find with a time window and optional filters."

* parameter[+].name = "start"
* parameter[=].valueDateTime = "2026-04-15T00:00:00+01:00"

* parameter[+].name = "end"
* parameter[=].valueDateTime = "2026-04-30T23:59:59+01:00"

* parameter[+].name = "visit-type"
* parameter[=].valueString = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/service-type-id|DENTALEX"

* parameter[+].name = "healthcareService"
* parameter[=].valueReference = Reference(HealthcareService/19392e14-dea6-48eb-a7fb-08374ea5ffae)

* parameter[+].name = "practitionerRole"
* parameter[=].valueReference = Reference(PractitionerRole/practitioner-role-1)

* parameter[+].name = "practitioner"
* parameter[=].valueReference.identifier.system = "https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-practitioner/550e8400-e29b-41d4-a716-446655440000"
* parameter[=].valueReference.identifier.value = "7001"
* parameter[=].valueReference.display = "Anna Andersson"

* parameter[+].name = "organization"
* parameter[=].valueReference.identifier.system = "https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-billingorganization/550e8400-e29b-41d4-a716-446655440000"
* parameter[=].valueReference.identifier.value = "2001"
* parameter[=].valueReference.display = "Tandvard City AB"

Instance: FindAppointmentsResponseExample
InstanceOf: Bundle
Usage: #example
Title: "Example response for Appointment/$find"
Description: "FHIR R4 Bundle example returned from Appointment/$find with proposed appointments."

* type = #searchset
* total = 1

* entry[+].fullUrl = "https://api.servicewell.se/fhir/Appointment/portal-appointment-1"
* entry[=].resource = PortalAppointmentExample
* entry[=].search.mode = #match
