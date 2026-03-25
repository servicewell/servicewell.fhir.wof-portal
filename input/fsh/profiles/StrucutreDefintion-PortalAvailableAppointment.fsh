Profile: PortalAvailableAppointment
Parent: WofConnectAppointment
Id: portal-available-appointment
Title: "Available Appointment Portal"
Description: """The public API model for 'Available Appointments'  
Appointment representation of an available appointment.
 Inherits IHE Scheduling Appointment.  
"""

* identifier 1..* MS
* identifier.type insert Obligation($wof-portal-client-actor, #SHOULD:ignore)
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[0].path = "type"
* identifier ^slicing.rules = #open
* identifier contains endpointId 1..1 MS
* identifier[endpointId].type.text = "source systems appointment concept"
* identifier[endpointId].system 1..1 MS
* identifier[endpointId].system ^short = "Identifier-based reference to the Appointment concept in the source system."
* identifier[endpointId].system ^definition = "See [EndpointIdentifierSystemForAppointment](./NamingSystem-EndpointIdentifierSystemForAppointment.html) for expected identifier.system values."
* identifier[endpointId].value 1..1 MS
* identifier[endpointId].value ^short = "Source systems identifier for the appointment"



* participant ^slicing.discriminator.type = #type
* participant ^slicing.discriminator.path = "actor"
* participant ^slicing.rules = #open
* participant ^slicing.description = ""
* participant ^slicing.ordered = false

* participant contains healthcareService 0..1 and practitionerRole 0..1
* participant[healthcareService].actor only Reference(HealthcareServicePortal)
* participant[practitionerRole].actor only Reference(PractitionerRolePortal)


