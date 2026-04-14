Profile: PortalPatient
Parent: WofBasePatient
Id: portal-patient
Title: "Portal Patient"
Description: "Representation of a patient in Wof-portal public API system."

* id MS
* id ^short = "Internal identifier"

* extension contains PortalConsentToMarketing named consentToMarketing 0..1

// Corresponds to PersonalNumber + PersonalNumberSystem
* identifier.type insert Obligation($wof-portal-client-actor, #SHOULD:ignore)

// Corresponds to MobilePhone + Email
* telecom 0..*
* telecom ^slicing.discriminator[0].type = #value
* telecom ^slicing.discriminator[0].path = "system"
* telecom ^slicing.rules = #open
* telecom contains mobilePhone 0..1 MS and email 0..1 MS
* telecom[mobilePhone].system = #phone (exactly)
* telecom[mobilePhone] obeys portal-mobile-or-empty-use
* telecom[mobilePhone].value 1..1 MS
* telecom[email].system = #email (exactly)
* telecom[email].value 1..1 MS

// ---- Explicitly prohibited elements (not used in this profile) ----
* implicitRules 0..0
* modifierExtension 0..0
* active 0..0
* gender 0..0
* deceased[x] 0..0
* address 0..0
* maritalStatus 0..0
* multipleBirth[x] 0..0
* photo 0..0
* contact 0..0
* communication 0..0
* generalPractitioner 0..0
* managingOrganization 0..0
* link 0..0

Invariant: portal-mobile-or-empty-use
Description: "Mobile phone use must be 'mobile' or not set."
Severity: #error
Expression: "use.empty() or use = 'mobile'"

