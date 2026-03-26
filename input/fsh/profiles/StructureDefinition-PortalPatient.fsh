Profile: PortalPatient
Parent: WofConnectPatient
Id: portal-patient
Title: "Portal Patient"
Description: "Representation of a patient in Wof-portal public API system."

* id MS
* id ^short = "Internal identifier"

// Corresponds to PersonalNumber + PersonalNumberSystem
* identifier.type insert Obligation($wof-portal-client-actor, #SHOULD:ignore)
* identifier contains sourceSystemIdentifier 0..1 MS
* identifier[personalNumber].system 1..1 MS
* identifier[personalNumber].type.text = "National Personal identifier"
* identifier[personalNumber].system ^short = "Personal number identifier" 
* identifier[personalNumber].system ^definition = "The namespace that identifies the type of personal identifier used to reference the patient. Should be a identifier system from the patient's country of origin FHIR Patient profile, such as a national person number or coordination number system."
* identifier[personalNumber].value 1..1 MS
* identifier[personalNumber].value ^short = "Main identifier for the patient, typically a personalnumber but not limited to"
* identifier[sourceSystemIdentifier].type.text = "source systems patient concept"
* identifier[sourceSystemIdentifier].system 1..1 MS
* identifier[sourceSystemIdentifier].system ^short = "Identifier-based reference to the Patient concept in the source system."
* identifier[sourceSystemIdentifier].system ^definition = "See [EndpointIdentifierSystemForPatient](./NamingSystem-EndpointIdentifierSystemForPatient.html) for expected identifier.system values."
* identifier[sourceSystemIdentifier].value ^short = "Source systems identifier for the patient"


// Corresponds to MobilePhone + Email
* telecom 0..*
* telecom ^slicing.discriminator[0].type = #value
* telecom ^slicing.discriminator[0].path = "system"
* telecom ^slicing.rules = #open
* telecom contains mobilePhone 0..1 MS
* telecom[mobilePhone].system = #phone (exactly)
* telecom[mobilePhone] obeys portal-mobile-or-empty-use
* telecom[mobilePhone].value 1..1 MS


Invariant: portal-mobile-or-empty-use
Description: "Mobile phone use must be 'mobile' or not set."
Severity: #error
Expression: "use.empty() or use = 'mobile'"

