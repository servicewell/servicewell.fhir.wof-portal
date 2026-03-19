Profile: BillingOrganizationPortal
Parent: Organization
Id: billing-organization-portal
Title: "BillingOrganizationPortal"
Description: "BillingOrganization represents the entity that is financially responsible for healthcare services."
* ^purpose = """
**BillingOrganization** represents the entity that is financially responsible for healthcare services.

It answers the question: _“Who owns invoicing, customer accounts, and statutory reporting for a performed service?”_
"""

* ^status = #active

* id 1..1
  * ^short = "Resource identifier"
  * ^definition = "Unique identifier for this BillingOrganization resource instance."

* meta 0..1
  * ^short = "Resource metadata"
  * ^definition = "Metadata about the resource, including version and profile declarations."
* meta.profile 0..*
  * ^short = "Profile conformance declarations"
  * ^definition = "Asserts the profile(s) this resource conforms to."

* name 1..1
  * ^short = "Name of the billing organization"
  * ^definition = "The display name of the entity that is financially responsible for healthcare services."

* active 1..1
  * ^short = "Whether the billing organization is active"
  * ^definition = "Indicates whether this BillingOrganization is currently active and may be used for invoicing and reporting."

* identifier 0..*
  * ^short = "External identifiers"
  * ^definition = "External identifiers for this BillingOrganization, such as an organization number used for statutory reporting or reimbursement."
* identifier.system 0..1
  * ^short = "Identifier namespace"
  * ^definition = "The namespace that defines the identifier value, e.g., a national organization number system."
* identifier.value 0..1
  * ^short = "Identifier value"
  * ^definition = "The identifier value within the given system, e.g., the organization number."

* telecom 0..1
  * ^short = "Contact details"
  * ^definition = "Contact information for the billing organization, such as a phone number or email address."
* telecom.system 0..1
  * ^short = "Contact type"
  * ^definition = "The type of contact, e.g., phone or email."
* telecom.value 0..1
  * ^short = "Contact value"
  * ^definition = "The actual contact detail, e.g., a phone number or email address."

// ---- Explicitly prohibited elements (not used in this profile) ----
* implicitRules 0..0
* language 0..0
* text 0..0
* contained 0..0
* modifierExtension 0..0
* type 0..0
* alias 0..0
* address 0..0
* partOf 0..0
* contact 0..0
* endpoint 0..0