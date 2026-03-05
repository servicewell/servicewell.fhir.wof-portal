Profile: WofConnectGetAppointment
Parent: ihe-sched-appt
Id: wof-connect-appointment
Title: "WOF Connect GetAppointment"
Description: "GetAppointment resource as exposed by WOF Connect integrations for search and display purposes."

* ^version = "1.0.0"
* ^status = #active

* meta 0..1 MS
* meta.id 0..1
* meta.id ^short = "ID for the meta element"

* id 1..1 MS
* id ^short = "Unique identifier for the appointment"

* status 1..1 MS
* status ^short = "The overall status of the appointment"

* serviceType 1..1 MS 
* serviceType ^short = "The specific service performed during this appointment"

* serviceType.coding 1..1 MS
* serviceType.coding ^short = "Coded type of the service"

* serviceType.coding.code 1..1 MS
* serviceType.coding.code ^short = "Code for the service"

* serviceType.coding.display 1..1 MS
* serviceType.coding.display ^short = "Display text for the service code"

* serviceType.coding.system 1..1 MS
* serviceType.coding.system ^short = "System that defines the service code"

* start 1..1 MS
* start ^short = "Date and time when the appointment starts"

* end 1..1 MS
* end ^short = "Date and time when the appointment ends"

* requestedPeriod 1..1 MS
* requestedPeriod ^short = "Requested start and end times for the appointment"

* requestedPeriod.start 0..1 MS
* requestedPeriod.start ^short = "Requested start time"

* requestedPeriod.end 0..1 MS
* requestedPeriod.end ^short = "Requested end time"

* participant 3..3 MS 
* participant ^short = "Participants involved in the appointment"

* participant.actor 1..1 MS
* participant.actor ^short = "The individual or entity participating in the appointment"

* participant.actor.display 0..1 MS
* participant.actor.display ^short = "Display name for the participant actor"

* participant ^slicing.discriminator.type = #type
* participant ^slicing.discriminator.path = "actor"
* participant ^slicing.rules = #open

* participant contains
    healthcareService 1..1 MS and
    patient 1..1 MS and
    practitionerRole 1..1 MS 
    

* participant[healthcareService].actor only Reference(WofConnectHealthcareService)
* participant[patient].actor only Reference(Patient)
* participant[practitionerRole].actor only Reference(WofConnectPractitionerRole)


* extension contains 
    WofConnectAppointmentUpdate named appointmentUpdate 0..1 MS and
    WofConnectGetAppointmentRules named schedulingRules 0..1 MS and
    https://profiles.ihe.net/ITI/Scheduling/StructureDefinition/extension-status-reason
        named statusReason 0..1 MS


* id insert Obligation($serverActor, #SHALL:populate)

* status insert Obligation($serverActor, #SHALL:populate)

* serviceType.coding.code insert Obligation($serverActor, #SHALL:populate)
* serviceType.coding.display insert Obligation($serverActor, #SHALL:populate)

* start insert Obligation($serverActor, #SHALL:populate)
* end insert Obligation($serverActor, #SHALL:populate)

* serviceType.coding.system insert Obligation($serverActor, #SHOULD:populate-if-known)

* participant insert Obligation($serverActor, #SHOULD:populate-if-known)

* extension[appointmentUpdate] insert Obligation($serverActor, #SHOULD:populate)
* extension[schedulingRules] insert Obligation($serverActor, #MAY:populate)
* extension[statusReason] insert Obligation($serverActor, #MAY:populate)

* obeys inv-start-before-end

Invariant: inv-start-before-end
Description: "Appointment start must be before or equal to end"
Severity: #error
Expression: "start <= end"
