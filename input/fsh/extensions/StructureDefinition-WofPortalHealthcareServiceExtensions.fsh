Extension: UrlPlaceholder
Id: ext-url-placeholder
Title: "URL Placeholder"
Description: "Placeholder URL for clinic booking links."

* ^status = #active
* ^context.type = #element
* ^context.expression = "HealthcareService"

* value[x] only string



Extension: ClinicInfoDirections
Id: ext-clinic-info-directions
Title: "Clinic Directions"
Description: "Directions for how to reach the clinic."

* ^status = #active
* ^context.type = #element
* ^context.expression = "HealthcareService"

* value[x] only string



Extension: ClinicInfoParking
Id: ext-clinic-info-parking
Title: "Clinic Parking"
Description: "Parking information for the clinic."

* ^status = #active
* ^context.type = #element
* ^context.expression = "HealthcareService"

* value[x] only string



Extension: ClinicInfoAbout
Id: ext-clinic-info-about
Title: "Clinic About"
Description: "Description about the clinic."

* ^status = #active
* ^context.type = #element
* ^context.expression = "HealthcareService"

* value[x] only string



Extension: ClinicInfoSpokenLanguages
Id: ext-clinic-info-spoken-languages
Title: "Clinic Spoken Languages"
Description: "Languages spoken at the clinic."

* ^status = #active
* ^context.type = #element
* ^context.expression = "HealthcareService"

* value[x] only string



Extension: ClinicInfoBookingSummaryInformationText
Id: ext-clinic-info-booking-summary-information-text
Title: "Booking Summary Information"
Description: "Information text shown during booking summary."

* ^status = #active
* ^context.type = #element
* ^context.expression = "HealthcareService"

* value[x] only string



Extension: ClinicPicture
Id: ext-clinic-picture
Title: "Clinic Picture"
Description: "Reference to a contained Binary resource representing a clinic image."

* ^status = #active
* ^context.type = #element
* ^context.expression = "HealthcareService"

* value[x] only Reference(Binary)



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