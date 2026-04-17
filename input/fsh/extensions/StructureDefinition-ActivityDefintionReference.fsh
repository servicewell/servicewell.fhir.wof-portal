Extension: ActivityDefinitionReference
Id: activity-definition-reference
Title: "ActivityDefinition Reference"
Description: "References the ActivityDefinition that an appointment instance is based on."
Context: Appointment

* value[x] only Reference(ActivityDefinition)
* value[x] ^short = "Reference to related ActivityDefinition"
* value[x] ^definition = "Points to the ActivityDefinition resource that defines the service concept for the appointment."
* valueReference 1..1