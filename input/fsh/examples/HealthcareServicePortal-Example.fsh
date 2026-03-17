Instance: 19392e14-dea6-48eb-a7fb-08374ea5ffae
InstanceOf: HealthcareServicePortal
Usage: #example
Title: "Example HealthcareServicePortal"
Description: "Example HealthcareServicePortal resource with clinic information and booking attachments."
* meta.profile[+] = Canonical(HealthcareServicePortal)
* contained[+] = adressId
* extension[clinicInfo].extension[urlPlaceholder].valueString = "test"
* extension[clinicInfo].extension[directions].valueString = "Directions to the clinic."
* extension[clinicInfo].extension[parking].valueString = "Parking information."
* extension[clinicInfo].extension[about].valueString = "About the clinic."
* extension[clinicInfo].extension[spokenLanguages].valueString = "sv, en"
* extension[clinicInfo].extension[bookingSummaryInformationText].valueString = "Booking summary information text."
* extension[attachments].extension[healthcareServiceBookingRules].valueAttachment.data = "eyJXcml0ZURlYnVnSW5mbyI6ZmFsc2UsIk9sZGVyVGhhbiI6MjQsIk1pbmltdW1BZHZhbmNlQm9va2luZ0hvdXJzIjoxLCJBbGxvd1Jlc2NoZWR1bGVSZW1haW5pbmdIb3VycyI6NDgsIkFsbG93UmVzY2hlZHVsZUFmdGVyUmVnaXN0cmF0aW9uSG91cnMiOjEsIk1heE51bWJlck9mUmVzY2hlZHVsaW5nc1JlY2FsbCI6bnVsbCwiTWF4TnVtYmVyT2ZSZXNjaGVkdWxpbmdzTm90UmVjYWxsIjpudWxsLCJEaXNhbGxvd1Jlc2NoZWR1bGluZyI6ZmFsc2UsIkFsbG93ZWRDYXRlZ29yaWVzRm9yUmVzY2hlZHVsZSI6WyJiY2JjMTc1NC1hMzk5LTQ4YmEtOGVlYy0xMDY2N2YxOWEwZDYiLCI5OTIyOTYyMi0wMWZlLTQ2YjYtYjQzMC0yOGI0YzA0MjYwMDYiLCI3OTg3ZGM1NC0zNWExLTQ0NzItODcyYy0wZTZiODA2MzJkMDEiLCJlNDJiYTY3Yy04NDFkLTRhZjItYTk0OC1mMzI4MGNmZDIzNGQiXSwiQWxsb3dDYW5jZWxsYXRpb25SZW1haW5pbmdIb3VycyI6NDgsIkFsbG93Q2FuY2VsbGF0aW9uQWZ0ZXJSZWdpc3RyYXRpb25Ib3VycyI6MSwiRGlzYWxsb3dDYW5jZWxsYXRpb24iOmZhbHNlLCJBbGxvd2VkQ2F0ZWdvcmllc0ZvckNhbmNlbGxhdGlvbiI6WyIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwMDAwMDAwMDAiXSwiQ291bnRTZXRUb0JlQ2FsbGVkQXNSZWNhbGwiOnRydWUsIkhlYWx0aERlY2xhcmF0aW9uRXhwaXJhdGlvbk1vbnRocyI6OSwiTWluaW11bUFkdmFuY2VCb29raW5nTWludXRlcyI6NjB9"
* active = false
* photo.contentType = #image/png
* photo.data = "iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mP8Xw8AAoMBgAej0kQAAAAASUVORK5CYII="
* providedBy = Reference(Organization/4c1d53c0-a77d-4db4-bcd9-4a2fb38905a9) "Service-O"
* location = Reference(adressId)
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
* endpoint = Reference(Endpoint/e0a17fdc-c86c-42a6-82bb-a26b2402db97) "UtbStockholm"

Instance: adressId
InstanceOf: Location
Usage: #inline
* address.use = #work
* address.text = "test addres"
* address.city = "test city"
* physicalType = urn:oid:2.16.840.1.113883.4.642.3.328#si
* physicalType.text = "Site"
* partOf = Reference(Location/)
