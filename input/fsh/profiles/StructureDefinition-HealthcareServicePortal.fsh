Profile: HealthcareServicePortal
Parent: HealthcareService
Id: healthcare-service-portal
Title: "HealthcareServicePortal"  
Description: """
**HealthcareServicePortal** represents the place and operational context where care is performed.

It answers the question: _“Where can the patient receive a service?”_

"""

* ^status = #active

* id 1..1 MS
* meta.profile 0..*

* providedBy 1..1

* name 1..1
* active 1..1

* telecom 0..*
* telecom.system 0..1
* telecom.use 0..1
* telecom.value 0..1
* telecom.rank 0..1

* location 1..*

* endpoint 1..1
* endpoint.reference 0..1
* endpoint.display 0..1

* availableTime 0..*

* contained 0..*

* extension contains UrlPlaceholder named urlPlaceholder 0..1
* extension contains ClinicInfoDirections named directions 0..1
* extension contains ClinicInfoParking named parking 0..1
* extension contains ClinicInfoAbout named about 0..1
* extension contains ClinicInfoSpokenLanguages named spokenLanguages 0..1
* extension contains ClinicInfoBookingSummaryInformationText named bookingSummaryInformationText 0..1
* extension contains ClinicPicture named clinicPicture 0..1
* extension contains HealthcareServiceAttachments named attachments 0..1