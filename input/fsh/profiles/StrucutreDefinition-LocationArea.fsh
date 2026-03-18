Profile: LocationArea
Parent: Location
Id: LocationArea
Title: "Location Area"
Description: """
**LocationArea** represents a parent area that groups related healthcare services and care delivery locations.

It answers the question: _"Which larger area or grouping does this healthcare service location belong to?"_

This profile is used as the parent `Location` for contained `HealthcareServiceLocation` instances and other service locations that should be grouped under a shared area in the portal.

This profile intentionally constrains base FHIR to define a stable and testable API contract for WOF Portal.
"""

* ^url = "http://portal.wof.purified.link/fhir/StructureDefinition/LocationArea"
* ^status = #active

* meta.profile 0..*
* meta.profile ^short = "Declared conformance to LocationArea"
* meta.profile ^definition = "Identifies that the resource conforms to the LocationArea profile."

* id 1..1
* id ^short = "Stable logical identifier for the area"
* id ^definition = "The logical id of the LocationArea resource that groups healthcare service locations."

* status 1..1
* status ^short = "Lifecycle status of the area"
* status ^definition = "Indicates whether the LocationArea is active and available for use in the portal."

* name 1..1
* name ^short = "Display name of the area"
* name ^definition = "The human-readable name of the area used to present the grouping in the portal."

* physicalType 1..1
* physicalType ^short = "Physical type of the area"
* physicalType ^definition = "Describes the kind of location grouping represented by this resource."
* physicalType.coding 0..1
* physicalType.coding ^short = "Coded representation of the area type"
* physicalType.coding ^definition = "Optional coded representation of the physical type for the area."
* physicalType.coding.code 0..1
* physicalType.coding.code ^short = "Code for the area type"
* physicalType.coding.code ^definition = "The code value that identifies the physical type of the area."

* extension contains SortKey named sortKey 0..1
* extension[sortKey] ^short = "Portal-specific sort key"
* extension[sortKey] ^definition = "Sort key used to order the LocationArea consistently in portal presentation."

* identifier 0..0
* operationalStatus 0..0
* alias 0..0
* description 0..0
* mode 0..0
* type 0..0
* telecom 0..0
* address 0..0
* position 0..0
* managingOrganization 0..0
* partOf 0..0
* hoursOfOperation 0..0
* availabilityExceptions 0..0
* endpoint 0..0

