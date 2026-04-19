Profile: WofBasePatient
Parent: Patient
Id: wof-base-patient
Title: "Wof Base Patient"
Description: "Base profile of wof Patient"

* ^url = "https://canonical.fhir.link/servicewell/wof-base/StructureDefinition/wof-base-patient"
* ^abstract = true


* id MS
* id ^short = "Internal identifier"

* meta.profile 1..* MS
* meta.profile ^short = "Profile declaration for this portal resource"
* meta.profile ^definition = "Identifies that the resource conforms to WofBasePatient so clients can safely process it as the WOF Portal service concept profile."
* meta.profile insert Obligation($wof-portal-server-actor, #SHALL:populate)
* meta.versionId 0..1
* meta.versionId MS
* meta.versionId ^short = "Server-managed resource version"
* meta.versionId ^definition = "The technical resource version supplied by the server for change tracking of this specific WofBasePatient instance."
* meta.versionId insert Obligation($wof-portal-server-actor, #SHALL:populate)


// Corresponds to PersonalNumber + PersonalNumberSystem

* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[0].path = "type.text"
* identifier ^slicing.rules = #open

* identifier contains personalNumber 1..1 and sourceSystemIdentifier 0..1 MS

* identifier.type insert Obligation($wof-portal-client-actor, #SHOULD:ignore)
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

