
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

* extension[urlPlaceholder].value[x] only string
* extension[directions].value[x] only string
* extension[parking].value[x] only string
* extension[about].value[x] only string
* extension[spokenLanguages].value[x] only string
* extension[bookingSummaryInformationText].value[x] only string

* value[x] 0..0

