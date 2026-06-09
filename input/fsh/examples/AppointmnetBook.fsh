Alias: $csServiceType = http://portal.wof.purified.link/fhir/CodeSystem/csServiceType

Instance: BookAppointmentRequestExample
InstanceOf: Parameters
Usage: #example
Title: "Example request for Appointment/$book"
Description: "FHIR R4 Parameters example for invoking Appointment/$book with an Appointment payload, patient identifier, and comment."

* parameter[+].name = "appointment-resource"
* parameter[=].resource = 001-2026-06-15T09-30-00-B9-E3-R1

* parameter[+].name = "patient-resource"
* parameter[=].resource = 17710325-8809-0000-0000-000000000000

* parameter[+].name = "comment"
* parameter[=].valueString = "Patienten onskar tandlakarbesok fore kl 10.00."



Instance: 001-2026-06-15T09-30-00-B9-E3-R1
InstanceOf: Appointment
Usage: #inline
* meta.profile = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/portal-available-appointment"
* extension.url = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/activity-definition-reference"
* extension.valueReference = Reference(ActivityDefinition/50490e09-f308-4368-a64d-5df12661c48c) "Akut tandvård"
* identifier[0].system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/slot-id"
* identifier[=].value = "001-2026-06-15T09-30-00-B9-E3-R1"
* identifier[+].system = "https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-appointment"
* identifier[=].value = "e0a17fdc-c86c-42a6-82bb-a26b2402db97"
* status = #proposed
* serviceType = $csServiceType#Akut "Akut tandvård"
* start = "2026-06-15T07:30:00+00:00"
* end = "2026-06-15T07:50:00+00:00"
* participant[0].actor = Reference(HealthcareService/7e2b91ad-5b3c-4a84-9c5e-1a6d2f8c4b17)
* participant[=].status = #accepted
* participant[+].actor = Reference(PractitionerRole/89a530d3-7363-4a1b-9d86-df8802550319) "Tandläkare Olle Ohlsson"
* participant[=].status = #accepted
* participant[+].actor.identifier.system = "urn:oid:1.2.752.129.2.1.3.1"
* participant[=].actor.identifier.value = "17710325-8809"
* participant[=].status = #accepted



Instance: 17710325-8809-0000-0000-000000000000
InstanceOf: PortalPatient
Usage: #inline
Description: "Example of a patient in the WOF Portal system."

* meta.profile = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/portal-patient"
* identifier[personalNumber].system = "urn:oid:1.2.752.129.2.1.3.1"
* identifier[personalNumber].value = "17710325-8809"
* telecom[mobilePhone].system = #phone
* telecom[mobilePhone].value = "+46701234567"
* telecom[email].system = #email
* telecom[email].value = "patient@example.se"
* name.family = "Testsson"
* name.given[0] = "Tester"
* name.text = "Tester Testsson"

