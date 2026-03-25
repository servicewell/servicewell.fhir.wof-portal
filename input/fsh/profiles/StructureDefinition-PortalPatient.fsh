Profile: PortalPatient
Parent: Patient
Id: portal-patient
Title: "Portal Patient"
Description: "Representation of a patient in Wof-portal public API system."

* id MS
* id ^short = "Internal identifier"

// Corresponds to PersonalNumber + PersonalNumberSystem
* identifier 0..*
* identifier.type insert Obligation($wof-portal-client-actor, #SHOULD:ignore)
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[0].path = "type"
* identifier ^slicing.rules = #open
* identifier contains personalNumber 1..1 MS and endpointId 0..1 MS
* identifier[personalNumber].system 1..1 MS
* identifier[personalNumber].type.text = "National Personal identifier"
* identifier[personalNumber].system ^short = "Personal number identifier" 
* identifier[personalNumber].system ^definition = "The namespace that identifies the type of personal identifier used to reference the patient. Should be a identifier system from the patient's country of origin FHIR Patient profile, such as a national person number or coordination number system."
* identifier[personalNumber].value 1..1 MS
* identifier[personalNumber].value ^short = "Main identifier for the patient, typically a personalnumber but not limited to"
* identifier[endpointId].type.text = "source systems patient concept"
* identifier[endpointId].system 1..1 MS
* identifier[endpointId].system ^short = "Identifier-based reference to the Patient concept in the source system."
* identifier[endpointId].system ^definition = "See [EndpointIdentifierSystemForPatient](./NamingSystem-EndpointIdentifierSystemForPatient.html) for expected identifier.system values."
* identifier[endpointId].value ^short = "Source systems identifier for the patient"


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

Invariant: portal-mobile-or-empty-use
Description: "Mobile phone use must be 'mobile' or not set."
Severity: #error
Expression: "use.empty() or use = 'mobile'"

