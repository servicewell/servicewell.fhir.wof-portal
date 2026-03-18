Instance: LocationAreaExample
InstanceOf: LocationArea
Usage: #example
Title: "Example LocationArea"
Description: "Example LocationArea representing a geographical area used for filtering in the WOF Portal."

* id = "location-area-1"
* meta.profile[+] = Canonical(LocationArea)
* status = #active
* name = "Stockholm"
* physicalType.coding[+].system = "http://terminology.hl7.org/CodeSystem/location-physical-type"
* physicalType.coding[=].code = #area
* physicalType.coding[=].display = "Area"
* extension[sortKey].valueInteger = 1
