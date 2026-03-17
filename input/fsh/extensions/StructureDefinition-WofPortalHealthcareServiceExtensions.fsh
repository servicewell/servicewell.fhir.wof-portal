
Extension: ClinicInfo
Id: ext-clinic-info
Title: "Clinic Info"
Description: "Container extension for clinic information shown in the portal."

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


Extension: HealthcareServiceAttachments
Id: ext-healthcare-service-attachments
Title: "HealthcareService Attachments"
Description: "Attachment container extension for booking rules."

* ^status = #active
* ^context.type = #element
* ^context.expression = "HealthcareService"

* extension contains
    healthcareServiceBookingRules 0..1 and
    careProviderBookingRules 0..1

* extension[healthcareServiceBookingRules].value[x] only Attachment
* extension[careProviderBookingRules].value[x] only Attachment

* value[x] 0..0
