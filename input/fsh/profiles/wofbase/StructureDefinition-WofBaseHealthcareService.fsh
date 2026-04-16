Profile: WofBaseHealthcareService
Parent: HealthcareService
Id: wof-base-healthcare-service
Title: "Wof Base HealthcareService"  
Description: "Base profile of wof HealthcareService"


* ^url = "https://canonical.fhir.link/servicewell/wof-base/StructureDefinition/wof-base-healthcare-service"


* ^status = #active

* id ^short = "Stable logical identifier for the healthcare service"
* id ^definition = "The logical id of this WofBaseHealthcareService resource. It identifies the specific care offering location instance within the portal."
* meta.profile 1..* MS
* meta.profile ^short = "Profile declaration for this portal resource"
* meta.profile ^definition = "Identifies that the resource conforms to WofBaseHealthcareService so clients can safely process it as the WOF Portal service concept profile."
* meta.profile insert Obligation($wof-portal-server-actor, #SHALL:populate)
* meta.versionId 0..1
* meta.versionId MS
* meta.versionId ^short = "Server-managed resource version"
* meta.versionId ^definition = "The technical resource version supplied by the server for change tracking of this specific WofBaseHealthcareService instance."
* meta.versionId insert Obligation($wof-portal-server-actor, #SHALL:populate)

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

* location 1..*
* location 
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

* extension contains ClinicInfo named clinicInfo 0..1
* extension[clinicInfo] ^short = "Grouped clinic presentation information"
* extension[clinicInfo] ^definition = "Portal-specific clinic information such as URL placeholder, directions, parking, about text, spoken languages, and booking summary information text."

* extension contains BookingRules named bookingRules 0..1
* extension[bookingRules] ^short = "Grouped booking-related attachments"
* extension[bookingRules] ^definition = "Container for healthcare-service-specific supporting payloads, including reusable booking-rules configuration."

* characteristic 0..*


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

* communication 0..0
* referralMethod 0..0
* appointmentRequired 0..0
* endpoint 0..0
* notAvailable 0..0
* availabilityExceptions 0..0
* extraDetails 0..0

