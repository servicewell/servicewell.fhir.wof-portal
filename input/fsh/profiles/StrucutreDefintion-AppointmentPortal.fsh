Profile: AppointmentPortal
Parent: WofConnectBookingAppointment
Id: appointment-portal
Title: "Appointment Portal"
Description: "Appointment representation of a booked visit. Inherits IHE Scheduling Appointment."

* participant 3..3

* participant ^slicing.discriminator.type = #profile
* participant ^slicing.discriminator.path = "actor.resolve()"
* participant ^slicing.rules = #open
* participant ^slicing.description = ""
* participant ^slicing.ordered = false

* participant contains healthcareService 0..1 and practitionerRole 0..1 and patient 1..1

* participant[healthcareService].actor only Reference(HealthcareServicePortal)
* participant[practitionerRole].actor only Reference(PractitionerRolePortal)
* participant[patient].actor.identifier 1..1
* participant[patient].actor.identifier
* participant[patient].actor.identifier ^short = "Patient identifier"
* participant[patient].actor.identifier ^definition = "Identifier-based reference to the Patient in the source system. See EndpointIdentifierSystemForPatient for expected identifier.system values."
* participant[patient].actor.reference 0..0