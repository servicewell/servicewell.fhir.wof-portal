Profile: HealthcareServicePortal
Parent: WofBaseHealthcareService
Id: healthcare-service-portal
Title: "HealthcareServicePortal"  
Description: """
**HealthcareServicePortal** represents the place and operational context where care is performed.

It answers the question: _“Where can the patient receive a service?”_

The profile is used to present bookable care locations in the portal, including the responsible organization, contact information, location references, and portal-specific clinic information.

Portal-specific presentation details are grouped in the `clinicInfo` extension, while booking-related attachment payloads are grouped in the `attachments` extension.

This profile intentionally constrains base FHIR to define a stable and testable API contract for WOF Portal.

"""

* ^status = #active

* id ^short = "Stable logical identifier for the healthcare service"
* id ^definition = "The logical id of this HealthcareServicePortal resource. It identifies the specific care offering location instance within the portal."
* meta.versionId ^definition = "The technical resource version supplied by the server for change tracking of this specific HealthcareServicePortal instance."
* meta.profile ^definition = "Identifies that the resource conforms to HealthcareServicePortal so clients can safely process it as the WOF Portal service concept profile."


* providedBy only Reference(ServiceProviderPortal)
* providedBy ^short = "Organization responsible for the healthcare service"
* providedBy ^definition = "Reference to the top-level owning ServiceProviderPortal organization that owns the configuration, endpoints, and service structure for the customer, and is responsible for the healthcare service shown in the portal."
* providedBy MS

* name MS
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

* location 1..1
* location only Reference(HealthcareServiceLocation)
* location ^short = "Contained address for the healthcare service"
* location ^definition = "Reference to the single contained HealthcareServiceLocation instance that holds the clinic address for this healthcare service."

* availableTime 0..*
* availableTime ^short = "Opening hours and availability windows"
* availableTime ^definition = "Opening hours and other published availability windows for when the healthcare service is available in the portal."

* photo 0..1
* photo ^short = "Image representing the healthcare service"
* photo ^definition = "Attachment carrying binary image data that represents the healthcare service in the portal."

* contained 0..*
* contained ^short = "Contained resources used by the healthcare service"
* contained ^definition = "Inline resources, such as a location, that are packaged together with the healthcare service example or representation."

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

* identifier contains businessIdentifier 0..1 MS
* identifier[businessIdentifier].type.coding.code = #RI
* identifier[businessIdentifier].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[businessIdentifier].system MS
* identifier[businessIdentifier].value MS


* implicitRules 0..0
* text 0..1
* modifierExtension 0..0
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
* endpoint 0..0
* notAvailable 0..0
* availabilityExceptions 0..0
* extraDetails 0..0
