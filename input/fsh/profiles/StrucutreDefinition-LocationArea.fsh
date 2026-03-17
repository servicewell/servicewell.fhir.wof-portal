Profile: LocationArea
Parent: Location
Id: LocationArea
Title: "Location Area"
Description: "Location profile exposed by WOF Portal Public API."

* ^url = "http://portal.wof.purified.link/fhir/StructureDefinition/LocationArea"
* ^status = #active

* meta.profile 0..*

* id 1..1

* status 1..1

* name 1..1

* physicalType 1..1
* physicalType.coding 0..1
* physicalType.coding.code 0..1

* extension contains SortKey named sortKey 0..1

