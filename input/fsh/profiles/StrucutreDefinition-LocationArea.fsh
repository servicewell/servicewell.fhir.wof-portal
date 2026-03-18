Profile: LocationArea
Parent: Location
Id: LocationArea
Title: "Location Area"
Description: "Location profile exposed by WOF Portal Public API."

* ^url = "http://portal.wof.purified.link/fhir/StructureDefinition/LocationArea"
* ^status = #active

* meta.profile 0..*
  * ^short = "Profile conformance declarations"
  * ^definition = "Asserts the profile(s) this resource conforms to."

* id 1..1
  * ^short = "Resource identifier"
  * ^definition = "Unique identifier for this LocationArea resource instance."

* status 1..1
  * ^short = "Whether the location area is active"
  * ^definition = "Indicates whether this area is currently active and available for use in booking and offer contexts."

* name 1..1
  * ^short = "Name of the area"
  * ^definition = "Human-readable name of the geographical or logical area, used for display and selection in the patient-facing client."

* physicalType 1..1
  * ^short = "Physical type of the location"
  * ^definition = "Classifies the location as an area. SHALL be set to the Area code to enable filtering via the `physical-type` search parameter."
* physicalType.coding 0..1
  * ^short = "Coded physical type"
  * ^definition = "A coded representation of the physical type of the location."
* physicalType.coding.code 0..1
  * ^short = "Physical type code"
  * ^definition = "The code identifying this location as an area, e.g., `area`."

* extension contains SortKey named sortKey 0..1

// ---- Explicitly prohibited elements (not used in this profile) ----
* implicitRules 0..0
* language 0..0
* text 0..0
* contained 0..0
* modifierExtension 0..0
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
