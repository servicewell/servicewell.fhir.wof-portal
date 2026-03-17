Profile: ActivityDefinitionPortal
Parent: ActivityDefinition
Id: activity-definition-portal
Title: "ActivityDefinitionPortal"
Description: """
**ActivityDefinition** represents what can be offered and booked as a service.

It answers the question: _“What service is the patient booking?”_
"""
* ^status = #active

* id 1..1

* meta.profile 0..*

* date 1..1
* status 1..1

* name 1..1
* title 1..1
* subtitle 0..1
* description 1..1

* code 1..1
* code.coding 0..1
* code.coding.code 0..1
* code.coding.system 0..1

* kind 0..1

* extension contains SortKey named sortKey 0..1
* extension contains Campaigns named campaigns 0..1

Extension: Campaigns
Id: ext-campaigns
Title: "Campaigns"
Description: "Campaign identifiers encoded as JSON."

* ^status = #active
* ^context.type = #element
* ^context.expression = "ActivityDefinition"

* value[x] only Attachment