Instance: 19392e14-dea6-48eb-a7fb-08374ea5ffae
InstanceOf: HealthcareServicePortal
Usage: #example
Title: "Example HealthcareServicePortal"
Description: "Example HealthcareServicePortal resource with clinic information and booking attachments."
* meta.profile[+] = Canonical(HealthcareServicePortal)
* contained[+] = adressId
* contained[+] = AreaLocationExample
* contained[+] = ServiceProviderPortalExample
* extension[clinicInfo].extension[urlPlaceholder].valueString = "test"
* extension[clinicInfo].extension[directions].valueString = "Directions to the clinic."
* extension[clinicInfo].extension[parking].valueString = "Parking information."
* extension[clinicInfo].extension[about].valueString = "About the clinic."
* extension[clinicInfo].extension[spokenLanguages].valueString = "sv, en"
* extension[clinicInfo].extension[bookingSummaryInformationText].valueString = "Booking summary information text."
* extension[attachments].extension[healthcareServiceBookingRules].valueAttachment.contentType = #application/json
* extension[attachments].extension[healthcareServiceBookingRules].valueAttachment.data = "eyJXcml0ZURlYnVnSW5mbyI6ZmFsc2UsIk9sZGVyVGhhbiI6MjQsIk1pbmltdW1BZHZhbmNlQm9va2luZ0hvdXJzIjoxLCJBbGxvd1Jlc2NoZWR1bGVSZW1haW5pbmdIb3VycyI6NDgsIkFsbG93UmVzY2hlZHVsZUFmdGVyUmVnaXN0cmF0aW9uSG91cnMiOjEsIk1heE51bWJlck9mUmVzY2hlZHVsaW5nc1JlY2FsbCI6bnVsbCwiTWF4TnVtYmVyT2ZSZXNjaGVkdWxpbmdzTm90UmVjYWxsIjpudWxsLCJEaXNhbGxvd1Jlc2NoZWR1bGluZyI6ZmFsc2UsIkFsbG93ZWRDYXRlZ29yaWVzRm9yUmVzY2hlZHVsZSI6WyJiY2JjMTc1NC1hMzk5LTQ4YmEtOGVlYy0xMDY2N2YxOWEwZDYiLCI5OTIyOTYyMi0wMWZlLTQ2YjYtYjQzMC0yOGI0YzA0MjYwMDYiLCI3OTg3ZGM1NC0zNWExLTQ0NzItODcyYy0wZTZiODA2MzJkMDEiLCJlNDJiYTY3Yy04NDFkLTRhZjItYTk0OC1mMzI4MGNmZDIzNGQiXSwiQWxsb3dDYW5jZWxsYXRpb25SZW1haW5pbmdIb3VycyI6NDgsIkFsbG93Q2FuY2VsbGF0aW9uQWZ0ZXJSZWdpc3RyYXRpb25Ib3VycyI6MSwiRGlzYWxsb3dDYW5jZWxsYXRpb24iOmZhbHNlLCJBbGxvd2VkQ2F0ZWdvcmllc0ZvckNhbmNlbGxhdGlvbiI6WyIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwMDAwMDAwMDAiXSwiQ291bnRTZXRUb0JlQ2FsbGVkQXNSZWNhbGwiOnRydWUsIkhlYWx0aERlY2xhcmF0aW9uRXhwaXJhdGlvbk1vbnRocyI6OSwiTWluaW11bUFkdmFuY2VCb29raW5nTWludXRlcyI6NjB9"
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
* physicalType = urn:oid:2.16.840.1.113883.4.642.3.328#si
* physicalType.text = "Site"
* position.longitude = 18.068457
* position.latitude = 59.327026
* partOf = Reference(AreaLocationExample)

Instance: AreaLocationExample
InstanceOf: LocationArea
Usage: #inline
* status = #active
* name = "OSLO Mellansverige"
* physicalType = urn:oid:2.16.840.1.113883.4.642.3.328#si
* physicalType.text = "Area"

Instance: ServiceProviderPortalExample
InstanceOf: ServiceProviderPortal
Usage: #inline
* name = "Service-O"
