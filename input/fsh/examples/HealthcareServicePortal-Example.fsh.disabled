Instance: 19392e14-dea6-48eb-a7fb-08374ea5ffae
InstanceOf: HealthcareServicePortal
Usage: #example
Title: "Example HealthcareServicePortal"
Description: "Example HealthcareServicePortal resource with clinic information and booking attachments."
* meta.profile[+] = Canonical(HealthcareServicePortal)
* meta.tag.code = #serviceO
* identifier[businessIdentifier].system = "http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/pms-system"
* identifier[businessIdentifier].value = "12345"
* contained[+] = adressId
* contained[+] = AreaLocationExample
* contained[+] = ServiceProviderPortalExample
* contained[=].
* extension[clinicInfo].extension[urlPlaceholder].valueString = "test"
* extension[clinicInfo].extension[directions].valueString = "Directions to the clinic."
* extension[clinicInfo].extension[parking].valueString = "Parking information."
* extension[clinicInfo].extension[about].valueString = "About the clinic."
* extension[clinicInfo].extension[spokenLanguages].valueString = "sv, en"
* extension[clinicInfo].extension[bookingSummaryInformationText].valueString = "Booking summary information text."
* extension[bookingRules].extension[allowCancellationAfterRegistrationHours].valueInteger = 100
* extension[bookingRules].extension[allowCancellationRemainingHours].valueInteger = 0
* extension[bookingRules].extension[allowRescheduleAfterRegistrationHours].valueInteger = 100
* extension[bookingRules].extension[allowRescheduleRemainingHours].valueInteger = 0
* extension[bookingRules].extension[cancellationAllowed].valueBoolean = true
* extension[bookingRules].extension[reschedulingAllowed].valueBoolean = true
* extension[bookingRules].extension[minimumPatientAgeYears].valuePositiveInt = 20
* extension[bookingRules].extension[minimumAdvanceBookingMinutes].valueInteger = 60
* active = false
* photo.contentType = #image/png
* photo.data = "iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mP8Xw8AAoMBgAej0kQAAAAASUVORK5CYII="
* providedBy = Reference(ServiceProviderPortalExample) "Service-O"
* location = Reference(adressId)
* availableTime[0].daysOfWeek[0] = #thu
* availableTime[0].daysOfWeek[+] = #fri
* availableTime[0].daysOfWeek[+] = #sun
* availableTime[0].allDay = false
* availableTime[0].availableStartTime = "00:00:00"
* availableTime[0].availableEndTime = "23:55:00"
* availableTime[1].daysOfWeek[0] = #mon
* availableTime[1].daysOfWeek[+] = #tue
* availableTime[1].daysOfWeek[+] = #wed
* availableTime[1].daysOfWeek[+] = #sat
* availableTime[1].allDay = true
* name = "test"
* telecom[0].system = #phone
* telecom[=].value = "1234"
* telecom[=].use = #work
* telecom[=].rank = 1
* telecom[+].system = #url
* telecom[=].use = #work
* telecom[=].rank = 2
* telecom[+].system = #email
* telecom[=].use = #work
* telecom[=].rank = 1
Instance: adressId
InstanceOf: HealthcareServiceLocation
Usage: #inline
* address.use = #work
* address.text = "Slottskajen 38"
* address.city = "Stockholm"
* physicalType.text = "Site"
* position.longitude = 18.068457
* position.latitude = 59.327026
* partOf = Reference(AreaLocationExample)

Instance: AreaLocationExample
InstanceOf: LocationArea
Usage: #inline
* status = #active
* name = "OSLO Mellansverige"
* physicalType.text = "Area"
