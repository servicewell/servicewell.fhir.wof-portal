Extension: ActivityDefinitionReference
Id: activity-definition-reference
Title: "ActivityDefinitionReference"
Description: """A reference to an ActivityDefinition that describes the type of activity or service associated with an Appointment.   
This extension allows linking an Appointment to a formal definition of the activity being performed, enabling structured representation of the intended service or procedure."""
Context: Appointment

* valueReference 1..1
* valueReference ^short = "Reference to an ActivityDefinition"
* valueReference ^definition = "A reference to the ActivityDefinition that formally defines the type of activity or service to be performed in the context of this Appointment."
* value[x] only Reference(ActivityDefinitionPortal)