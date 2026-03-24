Profile: PortalPatient
Parent: Patient
Id: portal-patient
Title: "Portal Patient"
Description: "Representation of a patient in Wof-portal public API system."

* id MS
* id ^short = "Internal identifier"

// Corresponds to PersonalNumber + PersonalNumberSystem
* identifier 0..*
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[0].path = "system"
* identifier ^slicing.rules = #open
* identifier contains personalNumber 1..1 MS and endpointId 1..1 MS
* identifier[personalNumber].system 1..1 MS
* identifier[personalNumber].system = Canonical(PersonalNumberIdentifierSystemForPatient) (exactly)
* identifier[personalNumber].system obeys portal-personalnumber-system
* identifier[personalNumber].value 1..1 MS
* identifier[personalNumber].value ^short = "Main identifier for the patient, typically a personalnumber but not limited to"
* identifier[endpointId].system = Canonical(EndpointIdentifierSystemForPatient) (exactly)
* identifier[endpointId].value 1..1 MS
* identifier[endpointId].value ^short = "Source system identifier for the patient"


// Corresponds to Name, NameGiven, NameFamily
* name 0..1 MS
* name.text 0..1 MS
* name.family 0..1 MS
* name.given 0..* MS

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

// Corresponds to Birthdate
* birthDate 0..1 MS

// Corresponds to ConsentToMarketing
* extension contains PortalConsentToMarketing named consentToMarketing 0..1 MS


Extension: PortalConsentToMarketing
Id: ext-consent-to-marketing
Title: "Portal Consent To Marketing"
Description: "Patient consent to marketing communication."
* ^status = #draft
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* ^url = "http://portal.wof.purified.link/fhir/StructureDefinition/extConsentToMarketing"
* value[x] only boolean
* valueBoolean 1..1 MS

Invariant: portal-personalnumber-system
Description: "Allowed identifier systems for personal number."
Severity: #error
Expression: "$this = 'urn:oid:2.16.578.1.12.4.1.4.1' or $this = 'urn:oid:2.16.578.1.12.4.1.4.2' or $this = 'urn:oid:2.16.578.1.12.4.1.4.3' or $this = 'urn:oid:2.16.578.1.12.4.1.4.4' or $this = 'urn:oid:2.16.578.1.12.4.1.4.5' or $this = 'urn:oid:1.2.752.129.2.1.3.1' or $this = 'urn:oid:1.2.752.129.2.1.3.3' or $this = 'http://electronichealth.se/identifier/personnummer'"

Invariant: portal-mobile-or-empty-use
Description: "Mobile phone use must be 'mobile' or not set."
Severity: #error
Expression: "use.empty() or use = 'mobile'"

