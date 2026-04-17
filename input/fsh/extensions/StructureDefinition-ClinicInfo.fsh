
Extension: ClinicInfo
Id: ext-clinic-info
Title: "Clinic Info"
Description: "Container extension for clinic information shown in the portal."

* ^url = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/ext-clinic-info"


* ^status = #active
* ^context.type = #element
* ^context.expression = "HealthcareService"

* extension contains
    urlPlaceholder 0..1 and
    directions 0..1 and
    parking 0..1 and
    about 0..1 and
    spokenLanguages 0..1 and
    bookingSummaryInformationText 0..1

* extension[urlPlaceholder] ^short = "URL-friendly clinic key"
* extension[urlPlaceholder] ^definition = "A URL-safe placeholder or slug for the clinic, typically used in portal route paths or links."
* extension[urlPlaceholder].value[x] only string

* extension[directions] ^short = "Directions to the clinic"
* extension[directions] ^definition = "Patient-facing text describing how to find or reach the clinic."
* extension[directions].value[x] only string

* extension[parking] ^short = "Parking information"
* extension[parking] ^definition = "Patient-facing parking guidance, such as availability, restrictions, or nearby options."
* extension[parking].value[x] only string

* extension[about] ^short = "About the clinic"
* extension[about] ^definition = "General descriptive text about the clinic, such as services, facilities, or profile information."
* extension[about].value[x] only string

* extension[spokenLanguages] ^short = "Languages spoken at the clinic"
* extension[spokenLanguages] ^definition = "Human-readable list of languages that staff at the clinic can communicate in."
* extension[spokenLanguages].value[x] only string

* extension[bookingSummaryInformationText] ^short = "Booking summary information"
* extension[bookingSummaryInformationText] ^definition = "Text shown in booking summary views."
* extension[bookingSummaryInformationText].value[x] only string

* value[x] 0..0

