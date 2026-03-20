Profile: AppointmentPortal
Parent: WofConnectBookingAppointment
Id: appointment-portal
Title: "Appointment Portal"
Description: "Appointment representation of a booked visit. Inherits IHE Scheduling Appointment."

* participant 2..2

* participant ^slicing.discriminator.type = #profile
* participant ^slicing.discriminator.path = "actor.resolve()"
* participant ^slicing.rules = #open
* participant ^slicing.description = ""
* participant ^slicing.ordered = false

* participant contains healthcareService 0..1 and practitionerRole 0..1 and patient 1..1

* participant[healthcareService].actor only Reference(HealthcareServicePortal)
* participant[practitionerRole].actor only Reference(PractitionerRolePortal)
* participant[patient].actor only Reference(Patient)