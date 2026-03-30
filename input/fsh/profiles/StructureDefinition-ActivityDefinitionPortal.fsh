Profile: ActivityDefinitionPortal
Parent: WofConnectActivityDefinition
Id: activity-definition-portal
Title: "ActivityDefinitionPortal"
Description: """
**ActivityDefinition** represents what can be offered and booked as a service.

It answers the question: _“What service is the patient booking?”_

**Actor-specific obligations**

- **WofPortalClient** only needs to populate `code.coding.code` when submitting a known service type code.
- **WofPortalServer** populates the full representation, including `meta`, presentation fields, `kind`, and the complete `code` structure.

This profile intentionally constrains base FHIR to define a stable and testable API contract for WOF Portal.
"""

// Allowed root elements first
* meta 1..1
* meta.profile 1..* MS
* meta.profile ^short = "Profile declaration for this portal resource"
* meta.profile ^definition = "Identifies that the resource conforms to ActivityDefinitionPortal so clients can safely process it as the WOF Portal service concept profile."
* meta.profile insert Obligation($wof-portal-server-actor, #SHALL:populate)
* meta.versionId 1..1
* meta.versionId MS
* meta.versionId ^short = "Server-managed resource version"
* meta.versionId ^definition = "The technical resource version supplied by the server for change tracking of this specific ActivityDefinitionPortal instance."
* meta.versionId insert Obligation($wof-portal-server-actor, #SHALL:populate)
* name 1..1 MS
* name ^short = "Machine-friendly name for the service concept"
* name ^definition = "A stable, machine-friendly name for the service concept represented by this ActivityDefinitionPortal."
* name insert Obligation($wof-portal-server-actor, #SHALL:populate)
* title 1..1 MS
* title ^short = "Human-readable title for the service"
* title ^definition = "The user-facing title used to present the service concept in search results, booking flows, and other portal views."
* title insert Obligation($wof-portal-server-actor, #SHALL:populate)
* title insert Obligation($wof-portal-client-actor, #SHALL:handle)
* status 1..1 MS
* status ^short = "Publication status of the service concept"
* status ^definition = "The lifecycle status of the ActivityDefinitionPortal definition, for example whether the service concept is active."
* status insert Obligation($wof-portal-server-actor, #SHALL:populate)
* date 1..1 MS
* date ^short = "Business version date for the definition"
* date ^definition = "The publication or business version date for this service definition. Clients may use it to understand when the definition was last updated by the publisher."
* date insert Obligation($wof-portal-server-actor, #SHALL:populate)
* description 1..1 MS
* description ^short = "Presentation description of the service"
* description ^definition = "A human-readable description of the service concept intended for presentation"
* description insert Obligation($wof-portal-server-actor, #SHALL:populate)
* description insert Obligation($wof-portal-client-actor, #SHALL:handle)
* kind 1..1
* kind MS
* kind ^short = "Target request type for the service"
* kind ^definition = "The request resource type represented by this service concept. In WOF Portal this is fixed to ServiceRequest."
* kind = #ServiceRequest
* kind insert Obligation($wof-portal-server-actor, #SHALL:populate)
* kind insert Obligation($wof-portal-client-actor, #SHALL:handle)
* code 1..1
* code MS
* code ^short = "Booking activity code for the service"
* code ^definition = "The business code that uniquely identifies the shared service concept. Booking and interoperability use this code rather than the FHIR resource id."
* code.coding 1..1 MS
* code.coding ^short = "Coded representation of the service concept"
* code.coding ^definition = "The coding that carries the booking activity code for the service concept."
* code.coding.system ^short = "WOF Connect service type code system"
* code.coding.system ^definition = "The coding system for the booking activity code. The server SHALL populate this with the WOF Connect service-type-id code system."
* code.coding.code ^short = "Service type identifier"
* code.coding.code ^definition = "The code value that uniquely identifies the shared service concept within the WOF Connect service-type-id code system. This is the only coded value the client is required to populate."
* code.coding.code insert Obligation($wof-portal-server-actor, #SHALL:populate)
* code.coding.code insert Obligation($wof-portal-client-actor, #SHALL:handle)
* code.coding.display 0..0
* code.text 0..0
* code insert Obligation($wof-portal-server-actor, #SHALL:populate)

* extension contains SortKey named sortKey 0..1
* extension[sortKey] ^short = "Portal-specific sort key"
* extension[sortKey] ^definition = "Sort key used to order the service concept consistently in portal presentation."
* extension contains Campaigns named campaigns 0..1
* extension[campaigns] ^short = "Campaign identifiers for the service"
* extension[campaigns] ^definition = "Campaign identifiers associated with the service concept, represented as repeated campaign codes."

* implicitRules 0..0
* language 0..0
* contained 0..0
* modifierExtension 0..0
* identifier 0..0
* subtitle 0..0
* experimental 0..0
* subject[x] 0..0
* useContext 0..0
* jurisdiction 0..0
* purpose 0..0
* usage 0..0
* copyright 0..0
* approvalDate 0..0
* lastReviewDate 0..0
* effectivePeriod 0..0
* topic 0..0
* author 0..0
* editor 0..0
* reviewer 0..0
* endorser 0..0
* relatedArtifact 0..0
* library 0..0
* intent 0..0
* priority 0..0
* doNotPerform 0..0
* timing[x] 0..0
* location 0..0
* participant 0..0
* product[x] 0..0
* quantity 0..0
* dosage 0..0
* bodySite 0..0
* specimenRequirement 0..0
* observationRequirement 0..0
* observationResultRequirement 0..0
* transform 0..0
* dynamicValue 0..0

Extension: Campaigns
Id: ext-campaigns
Title: "Campaigns"
Description: "Container extension for repeated campaign identifiers."

* ^status = #active
* ^context.type = #element
* ^context.expression = "ActivityDefinition"
* extension contains campaign 0..*
* extension[campaign].value[x] only code
* value[x] 0..0
