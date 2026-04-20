Extension: WofBaseListReference
Id: wof-base-list-reference
Title: "WofBase List Reference"
Description: "Points to a contained List resource that defines related items."
* ^status = #active
* ^url = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-list-reference"

* ^context[0].type = #element
* ^context[0].expression = "Resource"

* value[x] only Reference(List)
* value[x] ^short = "Reference to contained List"
* value[x] ^definition = "Reference to a contained List resource used to carry related items associated with the parent resource."
* valueReference 1..1
* valueReference.reference 1..1