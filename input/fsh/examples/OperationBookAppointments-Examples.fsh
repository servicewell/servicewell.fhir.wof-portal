Instance: BookAppointmentRequestExample
InstanceOf: Parameters
Usage: #example
Title: "Example request for Appointment/$book"
Description: "FHIR R4 Parameters example for invoking Appointment/$book with an Appointment payload, patient identifier, and comment."

* parameter[+].name = "appointment"
* parameter[=].resource = PortalAppointmentExample

* parameter[+].name = "appointment-reference"
* parameter[=].valueReference = Reference(Appointment/portal-appointment-1)

* parameter[+].name = "patient-identifier"
* parameter[=].valueIdentifier.system = "https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-patient/550e8400-e29b-41d4-a716-446655440000"
* parameter[=].valueIdentifier.value = "1001"

* parameter[+].name = "comment"
* parameter[=].valueString = "Patienten onskar tandlakarbesok fore kl 10.00."

Instance: BookAppointmentResponseExample
InstanceOf: Bundle
Usage: #example
Title: "Example response for Appointment/$book"
Description: "FHIR R4 Bundle example returned from Appointment/$book with the finalized appointment."

* type = #searchset
* total = 1

* entry[+].fullUrl = "https://api.servicewell.se/fhir/Appointment/portal-appointment-1"
* entry[=].resource = PortalAppointmentExample
* entry[=].search.mode = #match
