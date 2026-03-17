Profile: HealthcareServicePortal
Parent: HealthcareService
Id: healthcare-service-portal
Title: "HealthcareServicePortal"  
Description: """
**HealthcareServicePortal** represents the place and operational context where care is performed.

It answers the question: _“Where can the patient receive a service?”_

The profile is used to present bookable care locations in the portal, including the responsible organization, contact information, location references, technical endpoint, and portal-specific clinic information.

Portal-specific presentation details are grouped in the `clinicInfo` extension, while booking-related attachment payloads are grouped in the `attachments` extension.

"""

* ^status = #active

* id 1..1 MS
* id ^short = "Stable logical identifier for the healthcare service"
* id ^definition = "The logical id of this HealthcareServicePortal resource. It identifies the specific care offering location instance within the portal."
* meta.profile 0..*
* meta.profile ^short = "Declared conformance to HealthcareServicePortal"
* meta.profile ^definition = "Identifies that the resource conforms to the HealthcareServicePortal profile."

* providedBy 1..1
* providedBy only Reference(ServiceProviderPortal)
* providedBy ^short = "Organization responsible for the healthcare service"
* providedBy ^definition = "Reference to the top-level owning ServiceProviderPortal organization that owns the configuration, endpoints, and service structure for the customer, and is responsible for the healthcare service shown in the portal."

* name 1..1
* name ^short = "Display name of the healthcare service"
* name ^definition = "The human-readable name used to present the healthcare service in the portal."
* active 1..1
* active ^short = "Whether the healthcare service is active"
* active ^definition = "Indicates whether the healthcare service is active and should be considered available for use in the portal context."

* telecom 0..*
* telecom ^short = "Portal contact details for the healthcare service"
* telecom ^definition = "Contact points such as phone, URL, or email used to reach the healthcare service."
* telecom.system 0..1
* telecom.system ^short = "Type of contact point"
* telecom.system ^definition = "The contact point system, for example phone, url, or email."
* telecom.use 0..1
* telecom.use ^short = "Usage context for the contact point"
* telecom.use ^definition = "The intended usage for the contact point, such as work."
* telecom.value 0..1
* telecom.value ^short = "Actual contact value"
* telecom.value ^definition = "The phone number, URL, or email address for the contact point."
* telecom.rank 0..1
* telecom.rank ^short = "Priority order of contact points"
* telecom.rank ^definition = "Specifies the preferred order in which the listed contact points should be used."

* location 1..*
* location ^short = "Physical location where the service is delivered"
* location ^definition = "Reference to one or more locations where the patient can receive the healthcare service."

* endpoint 1..1
* endpoint ^short = "Technical endpoint for integration"
* endpoint ^definition = "Reference to the endpoint associated with this healthcare service for technical integration purposes."
* endpoint.reference 0..1
* endpoint.reference ^short = "Reference to the endpoint resource"
* endpoint.reference ^definition = "Literal reference to the endpoint resource representing the technical integration endpoint."
* endpoint.display 0..1
* endpoint.display ^short = "Human-readable label for the endpoint"
* endpoint.display ^definition = "Display text used when presenting the endpoint reference."

* availableTime 0..*
* availableTime ^short = "Published availability information"
* availableTime ^definition = "Availability details for the healthcare service when such scheduling context is exposed in the portal."

* photo 0..1
* photo ^short = "Image representing the healthcare service"
* photo ^definition = "Attachment carrying binary image data that represents the healthcare service in the portal."

* contained 0..*
* contained ^short = "Contained resources used by the healthcare service"
* contained ^definition = "Inline resources, such as a location, that are packaged together with the healthcare service example or representation."

* extension contains ClinicInfo named clinicInfo 0..1
* extension[clinicInfo] ^short = "Grouped clinic presentation information"
* extension[clinicInfo] ^definition = "Portal-specific clinic information such as URL placeholder, directions, parking, about text, spoken languages, and booking summary information text."

* extension contains HealthcareServiceAttachments named attachments 0..1
* extension[attachments] ^short = "Grouped booking-related attachments"
* extension[attachments] ^definition = "Container for attachment payloads related to booking rules and other portal-specific healthcare service attachments."

* implicitRules 0..0
* language 0..0
* text 0..1
* modifierExtension 0..0
* identifier 0..0
* category 0..0
* type 0..0
* specialty 0..0
* coverageArea 0..0
* serviceProvisionCode 0..0
* eligibility 0..0
* program 0..0
* characteristic 0..0
* communication 0..0
* referralMethod 0..0
* appointmentRequired 0..0
* notAvailable 0..0
* availabilityExceptions 0..0
* extraDetails 0..0
