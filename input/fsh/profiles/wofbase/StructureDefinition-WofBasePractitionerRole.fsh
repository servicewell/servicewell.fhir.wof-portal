Profile: WofBasePractitionerRole
Parent: PractitionerRole
Id: wof-base-practitioner-role
Title: "Wof Base PractitionerRole"
Description: "Base profile of wof PractitionerRole"

* ^url = "https://canonical.fhir.link/servicewell/wof-base/StructureDefinition/wof-base-practitioner-role"
* ^abstract = true


* ^status = #active

* id 1..1
  * ^short = "Resource identifier"
  * ^definition = "Unique identifier for this PractitionerRolePortal resource instance."

* meta.profile 1..* MS
* meta.profile ^short = "Profile declaration for this portal resource"
* meta.profile ^definition = "Identifies that the resource conforms to WofBasePractitionerRole so clients can safely process it as the WOF Portal service concept profile."
* meta.profile insert Obligation($wof-portal-server-actor, #SHALL:populate)
* meta.versionId 0..1
* meta.versionId MS
* meta.versionId ^short = "Server-managed resource version"
* meta.versionId ^definition = "The technical resource version supplied by the server for change tracking of this specific WofBasePractitionerRole instance."
* meta.versionId insert Obligation($wof-portal-server-actor, #SHALL:populate)

* active 1..1
  * ^short = "Whether this practitioner role is active"
  * ^definition = "Indicates whether this WofBasePractitionerRole is currently active and available for booking, offers, and service-specific configuration."

* code 1..*
  * ^short = "Role code"
  * ^definition = "The role(s) the practitioner performs in this context, e.g., the type of clinical or administrative function."

* specialty 0..*
  * ^short = "Clinical specialty"
  * ^definition = "The clinical specialty of the practitioner in this role, used to categorize the type of care delivered."

* practitioner 1..1
  * ^short = "The individual practitioner"
  * ^definition = "Identifier-based binding to the Practitioner logical model performing services in this role. Practitioner is not exposed as a standalone API resource in WOF Portal. Identifier systems are governed under the WofPortalIdentifierSystemRoot namespace."
* practitioner.reference 0..1
* practitioner.identifier 0..1
  * ^short = "Identifier for the practitioner"
* practitioner.display 1..1
  * ^short = "Display name of the practitioner"
  * ^definition = "The human-readable name of the practitioner, used for display purposes."

* healthcareService 0..1
  * ^short = "Service location where this role is performed"
  * ^definition = "Reference to the HealthcareServicePortal where this practitioner performs services in this role. A practitioner may work at multiple HealthcareServicePortals but each practitioner-healthcareservice relation makes the practitionerrole unique."
* healthcareService.reference 0..1
  * ^short = "Literal reference to the HealthcareService resource"
  * ^definition = "A relative or absolute URL to the HealthcareService resource."
* healthcareService.display 0..1
  * ^short = "Display name of the healthcare service"
  * ^definition = "The human-readable name of the service location, used for display purposes."

* organization 0..1
  * ^short = "Binding to the billing organization"
  * ^definition = "Identifier-based binding to the BillingOrganization logical model that is financially responsible for services performed in this role. BillingOrganization is not exposed as a standalone API resource in WOF Portal. Identifier systems are governed under the WofPortalIdentifierSystemRoot namespace."
* organization.reference 0..1
* organization.identifier 1..1
  * ^short = "Identifier for the billing organization"
  * ^definition = "Identifier-based reference to the BillingOrganization concept in the source system. See EndpointIdentifierSystemForBillingOrganization for expected identifier.system values."
* organization.display 0..1
  * ^short = "Display name of the billing organization"
  * ^definition = "The human-readable name of the billing organization, used for display purposes."
* organization.type 0..0

* extension contains PractitionerRoleDescription named description 0..1
* extension contains BinaryReference named binaryReference 0..1

* extension[description] ^short = "Practitioner role presentation text"
* extension[description] ^definition = "Human-readable descriptive text for the practitioner role, intended for portal display."
* extension[binaryReference] ^short = "Reference to contained practitioner image"
* extension[binaryReference] ^definition = "Reference to a contained Binary resource, typically used for practitioner photos."

* contained 0..*
  * ^short = "Contained Binary resources"
  * ^definition = "Inline Binary resources, typically used to carry image data (e.g., practitioner photo) referenced via the binaryReference extension."

* endpoint 0..1

* period 0..1



// ---- Explicitly prohibited elements (not used in this profile) ----
* implicitRules 0..0
* modifierExtension 0..0
* identifier 0..0
* location 0..0
* telecom 0..0
* availableTime 0..0
* notAvailable 0..0
* availabilityExceptions 0..0

Extension: PractitionerRoleDescription
Id: ext-practitionerrole-description
Title: "PractitionerRole Description"
Description: "Human-readable descriptive text for a practitioner role, used in portal presentation."

* ^status = #active
* ^context.type = #element
* ^context.expression = "PractitionerRole"

* value[x] only string
  * ^short = "Description text"
  * ^definition = "A human-readable description of the practitioner role, providing additional context about the services or specialties offered in this role. Displayed to patients in booking and offer flows."

Extension: BinaryReference
Id: ext-binary-reference
Title: "Binary Reference"
Description: "Reference to a contained Binary resource, used for practitioner images."

* ^status = #active
* ^context.type = #element
* ^context.expression = "PractitionerRole"

* value[x] only Reference(Binary)
  * ^short = "Reference to a contained Binary"
  * ^definition = "A reference to a Binary resource contained inline in this PractitionerRole, typically carrying image data such as a practitioner photo."

