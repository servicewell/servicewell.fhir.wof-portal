Extension: SortKey
Id: ext-sort-key
Title: "Sort Key"
Description: "Sort order key for Location."

* ^status = #active
* ^context[0].type = #fhirpath
* ^context[0].expression = "Location"
* ^context[1].type = #fhirpath
* ^context[1].expression = "ActivityDefinition"

* value[x] only integer


