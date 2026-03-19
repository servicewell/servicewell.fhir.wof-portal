Profile: PractitionerRolePortal
Parent: PractitionerRole
Id: practitioner-role-portal
Title: "PractitionerRolePortal"
Description: """
**PractitionerRolePortal** represents a practitioner acting in a specific operational and financial context.

It answers the question: _“In which role, at which service location, and under which financial responsibility does this practitioner perform services?”_

"""

* ^status = #active

* id 1..1
  * ^short = "Resource identifier"
  * ^definition = "Unique identifier for this PractitionerRolePortal resource instance."

* meta.profile 0..*
  * ^short = "Profile conformance declarations"
  * ^definition = "Asserts the profile(s) this resource conforms to."

* active 1..1
  * ^short = "Whether this practitioner role is active"
  * ^definition = "Indicates whether this PractitionerRolePortal is currently active and available for booking, offers, and service-specific configuration."

* code 1..*
  * ^short = "Role code"
  * ^definition = "The role(s) the practitioner performs in this context, e.g., the type of clinical or administrative function."

* specialty 1..*
  * ^short = "Clinical specialty"
  * ^definition = "The clinical specialty of the practitioner in this role, used to categorize the type of care delivered."

* practitioner 1..1
  * ^short = "The individual practitioner"
  * ^definition = "Reference to the Practitioner (person) performing services in this role. A single practitioner may have multiple PractitionerRolePortals across different service locations and billing contexts."
* practitioner.reference 0..1
  * ^short = "Literal reference to the Practitioner resource"
  * ^definition = "A relative or absolute URL to the Practitioner resource."
* practitioner.display 1..1
  * ^short = "Display name of the practitioner"
  * ^definition = "The human-readable name of the practitioner, used for display purposes."

* healthcareService 1..*
  * ^short = "Service location where this role is performed"
  * ^definition = "Reference to the HealthcareServicePortal where this practitioner performs services in this role. A practitioner may work at multiple HealthcareServicePortals."
* healthcareService.reference 0..1
  * ^short = "Literal reference to the HealthcareService resource"
  * ^definition = "A relative or absolute URL to the HealthcareService resource."
* healthcareService.display 0..1
  * ^short = "Display name of the healthcare service"
  * ^definition = "The human-readable name of the service location, used for display purposes."

* organization 1..1
  * ^short = "Financially responsible organization"
  * ^definition = "Reference to the BillingOrganizationPortal that is financially responsible for services performed in this role. Defines who owns invoicing, customer accounts, and statutory reporting."
* organization.reference 0..1
  * ^short = "Literal reference to the Organization resource"
  * ^definition = "A relative or absolute URL to the BillingOrganization resource."
* organization.display 1..1
  * ^short = "Display name of the billing organization"
  * ^definition = "The human-readable name of the billing organization, used for display purposes."
* organization.type 0..1
  * ^short = "Type qualifier for the organization reference"
  * ^definition = "Optional type qualifier indicating the kind of organization being referenced."

* extension contains PractitionerRoleDescription named description 0..1
* extension contains BinaryReference named binaryReference 0..1

* contained 0..*
  * ^short = "Contained Binary resources"
  * ^definition = "Inline Binary resources, typically used to carry image data (e.g., practitioner photo) referenced via the binaryReference extension."

// ---- Explicitly prohibited elements (not used in this profile) ----
* implicitRules 0..0
* language 0..0
* text 0..0
* modifierExtension 0..0
* identifier 0..0
* period 0..0
* location 0..0
* telecom 0..0
* availableTime 0..0
* notAvailable 0..0
* availabilityExceptions 0..0
* endpoint 0..0

Extension: PractitionerRoleDescription
Id: ext-practitionerrole-description
Title: "PractitionerRole Description"
Description: "Description of the practitioner role."

* ^status = #active
* ^context.type = #element
* ^context.expression = "PractitionerRole"

* value[x] only string
  * ^short = "Description text"
  * ^definition = "A human-readable description of the practitioner role, providing additional context about the services or specialties offered in this role. Displayed to patients in booking and offer flows."

Extension: BinaryReference
Id: ext-binary-reference
Title: "Binary Reference"
Description: "Reference to a contained Binary resource."

* ^status = #active
* ^context.type = #element
* ^context.expression = "PractitionerRole"

* value[x] only Reference(Binary)
  * ^short = "Reference to a contained Binary"
  * ^definition = "A reference to a Binary resource contained inline in this PractitionerRole, typically carrying image data such as a practitioner photo."