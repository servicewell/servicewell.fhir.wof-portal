Profile: HealthcareServiceLocation
Parent: Location
Id: healthcare-service-location
Title: "HealthcareServiceLocation"
Description: """
**HealthcareServiceLocation** represents the contained location instance used by `HealthcareServicePortal`.

It answers the question: _"Where should the patient go to receive care for this healthcare service?"_

This profile is intended to be used as the contained `Location` instance referenced by a `HealthcareServicePortal` resource. It carries the address for where care is delivered for that healthcare service and may reference a parent `LocationArea` that groups healthcare services.

This profile intentionally constrains base FHIR to define a stable and testable API contract for WOF Portal.
"""

* ^status = #active


* meta.profile 1..* MS
* meta.profile ^short = "Profile declaration for this portal resource"
* meta.profile ^definition = "Identifies that the resource conforms to HealthcareServiceLocation so clients can safely process it as the WOF Portal service concept profile."
* meta.profile insert Obligation($wof-portal-server-actor, #SHALL:populate)
* meta.versionId 0..1
* meta.versionId MS
* meta.versionId ^short = "Server-managed resource version"
* meta.versionId ^definition = "The technical resource version supplied by the server for change tracking of this specific HealthcareServiceLocation instance."
* meta.versionId insert Obligation($wof-portal-server-actor, #SHALL:populate)

* id 1..1
* id ^short = "Stable logical identifier for the contained location"
* id ^definition = "The logical id of the contained location instance used by the HealthcareServicePortal resource."
* address 0..1
* address ^short = "Address where care is delivered"
* address ^definition = "The address the patient should go to in order to receive care for this healthcare service."
* physicalType 1..1
* physicalType ^short = "Physical type of the care location"
* physicalType ^definition = "Describes the kind of physical place represented by this contained location, for example a site."
* physicalType.coding.code = #si
* physicalType.coding.system = "http://terminology.hl7.org/CodeSystem/location-physical-type"
* position 0..1
* position ^short = "Geographic coordinates of the care location"
* position ^definition = "Optional geographic coordinates for the location where care is delivered."
* partOf 0..1
* partOf only Reference(LocationArea)
* partOf ^short = "Parent area that groups healthcare services"
* partOf ^definition = "Reference to the parent LocationArea that groups this healthcare service location with other healthcare services in the same area."


* name 0..0
* status 0..0
* operationalStatus 0..0
* alias 0..0
* description 0..0
* mode 0..0
* type 0..0
* telecom 0..0
* managingOrganization 0..0
* hoursOfOperation 0..0
* availabilityExceptions 0..0
* endpoint 0..0
