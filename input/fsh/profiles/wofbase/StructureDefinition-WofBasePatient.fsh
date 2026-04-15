Profile: WofBasePatient
Parent: Patient
Id: wof-base-patient
Title: "Wof Base Patient"
Description: "Base profile of wof Patient"

* ^url = "https://canonical.fhir.link/servicewell/wof-base/StructureDefinition/wof-base-patient"


* id MS
* id ^short = "Internal identifier"

// Corresponds to PersonalNumber + PersonalNumberSystem

* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[0].path = "type.text"

* identifier ^slicing.rules = #open

* identifier contains personalNumber 1..1 MS

* identifier.type insert Obligation($wof-portal-client-actor, #SHOULD:ignore)
* identifier contains sourceSystemIdentifier 0..1 MS
* identifier[personalNumber] ^short = "National personal number for the patient"
* identifier[personalNumber].type.coding.code = #PN
* identifier[personalNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[personalNumber].value 1..1
* identifier[personalNumber].value ^short = "Personal number value"
* identifier[personalNumber].system 1..1
* identifier[personalNumber].system from WofPersonalNumberSystemVS (extensible)
* identifier[personalNumber].system ^short = "System that issued the personal number"
* identifier[personalNumber].system ^comment = "see (url till namingsystem)"


// Corresponds to MobilePhone + Email
* telecom 0..*

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

