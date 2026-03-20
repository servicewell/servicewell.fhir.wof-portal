Extension: SortKey
Id: ext-sort-key
Title: "Sort Key"
Description: "Sort order key for Location."

* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Location"
* ^context[1].type = #element
* ^context[1].expression = "ActivityDefinition"

* value[x] only integer
* value[x] ^short = "Sort order key"
* value[x] ^definition = "An integer value used to control the display order. Lower values are sorted first."


