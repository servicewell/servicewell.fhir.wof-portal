Extension: WofBaseAppointmentUpdate
Id: wof-base-appointment-update
Title: "Appointment Update - Reschedule & Cancellation"
Description: "Information about web rescheduling and whether the appointment can be rescheduled or cancelled at the current time."
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Appointment"
* ^url = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wofconnect-appointment-update"

* value[x] 0..0
* extension 1..*

// Complex extension with 3 child extensions
* extension contains
    webReschedulingCount 0..1 and
    canBeRescheduled 0..1 and
    canBeCancelled 0..1

* extension[webReschedulingCount].value[x] only integer
* extension[webReschedulingCount].valueInteger 1..1

* extension[canBeRescheduled] ^short = "Whether rescheduling is currently allowed"
* extension[canBeRescheduled] ^definition = "Indicates whether the appointment can be rescheduled at the current time according to applicable rules."
* extension[canBeRescheduled].value[x] only boolean
* extension[canBeRescheduled].valueBoolean 1..1

* extension[canBeCancelled] ^short = "Whether cancellation is currently allowed"
* extension[canBeCancelled] ^definition = "Indicates whether the appointment can be cancelled at the current time according to applicable rules."
* extension[canBeCancelled].value[x] only boolean
* extension[canBeCancelled].valueBoolean 1..1