Profile: PortalAvailableAppointment
Parent: WofConnectAppointment
Id: portal-available-appointment
Title: "Available Appointment Portal"
Description: """The public API model for 'Available Appointments'  
Appointment representation of an available appointment.
 Inherits IHE Scheduling Appointment.  
"""

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = ""
* identifier ^slicing.ordered = false

* identifier contains endpointId 1..1 MS
* identifier[endpointId].system 1..1 
* identifier[endpointId].system ^short = "Identifier-based reference to the Appointment concept in the source system. See [EndpointIdentifierSystemForAppointment](./EndpointIdentifierSystemForAppointment.html) for expected identifier.system values."
* identifier[endpointId].value 1..1 MS


* participant ^slicing.discriminator.type = #type
* participant ^slicing.discriminator.path = "actor.resolve()"
* participant ^slicing.rules = #open
* participant ^slicing.description = ""
* participant ^slicing.ordered = false

* participant contains healthcareService 0..1 and practitionerRole 0..1
* participant[healthcareService].actor only Reference(HealthcareServicePortal)
* participant[practitionerRole].actor only Reference(PractitionerRolePortal)


