Instance: PortalAppointmentExample
InstanceOf: PortalAppointment
Usage: #example
Title: "Example PortalAppointment"
Description: "Example portal appointment with healthcare service, practitioner role, and patient participants."

* id = "portal-appointment-1"
* meta.source = "https://api.servicewell.se/wof-portal"
* meta.profile[+] = Canonical(PortalAppointment)
* identifier[sourceSystemIdentifier].system = "https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-appointment/88883"
* identifier[sourceSystemIdentifier].value = "apt-001"
* status = #booked
* extension[characteristic].extension[workflow].extension[deviceBookingAvailable].valueBoolean = true
* extension[characteristic].extension[scheduling].extension[minChangeHours].valueInteger = 24
* extension[characteristic].extension[scheduling].extension[webReschedulingCountAllowed].valueInteger = 2
* extension[characteristic].extension[scheduling].extension[schedulingAvailability].valueCodeableConcept.coding.system = "http://canonical.fhir.link/servicewell/wof-base/CodeSystem/wc-characteristic"
* extension[characteristic].extension[scheduling].extension[schedulingAvailability].valueCodeableConcept.coding.code = #scheduling-accepts-cancellation
* extension[characteristic].extension[scheduling].extension[bookingConfirmation].valueCoding.system = "http://canonical.fhir.link/servicewell/wof-base/CodeSystem/wc-characteristic"
* extension[characteristic].extension[scheduling].extension[bookingConfirmation].valueCoding.code = #send-confirmation-by-sms
* extension[appointmentUpdate].extension[canBeRescheduled].valueBoolean = true
* extension[appointmentUpdate].extension[canBeCancelled].valueBoolean = true
* extension[appointmentUpdate].extension[webReschedulingCount].valueInteger = 1
* extension[activityDefinitionReference].valueReference = Reference(ActivityDefinition/dental-examination)
* serviceType.coding.system = $service-type-id
* serviceType.coding.code = #DENTALEX
* serviceType.coding.display = "Dental Examination"
* start = "2026-04-15T09:00:00+01:00"
* end = "2026-04-15T09:30:00+01:00"
* requestedPeriod.start = "2026-04-15T09:00:00+01:00"
* requestedPeriod.end = "2026-04-15T09:30:00+01:00"

* participant[healthcareService].actor.reference = "HealthcareService/19392e14-dea6-48eb-a7fb-08374ea5ffae"
* participant[healthcareService].actor.display = "Tandvård City"
* participant[healthcareService].status = #accepted

* participant[practitionerRole].actor.reference = "PractitionerRole/practitioner-role-1"
* participant[practitionerRole].actor.display = "Anna Andersson"
* participant[practitionerRole].status = #accepted

* participant[patient].actor.identifier.system = "urn:oid:1.2.752.129.2.1.3.1"
* participant[patient].actor.identifier.value = "1001"
* participant[patient].actor.display = "Erik Svensson"
* participant[patient].status = #accepted
