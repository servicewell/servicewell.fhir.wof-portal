Profile: PortalAppointment
Parent: WofConnectBookingAppointment
Id: portal-appointment
Title: "Appointment Portal"
Description: """The public API model for 'Portal Appointment  
Appointment representation of a booked visit or an available appointment. Appointment.status explains the context.  
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

* participant 3..3

* participant ^slicing.discriminator.type = #type
* participant ^slicing.discriminator.path = "actor.resolve()"
* participant ^slicing.rules = #open
* participant ^slicing.description = ""
* participant ^slicing.ordered = false

* participant contains healthcareService 0..1 and practitionerRole 0..1 and patient 1..1

* participant[healthcareService].actor only Reference(HealthcareServicePortal)
* participant[practitionerRole].actor only Reference(PractitionerRolePortal)
* participant[patient].actor.identifier 1..1
* participant[patient].actor.identifier.value 1..1 MS
* participant[patient].actor.identifier.value ^short = "personalnumber as reference to the Patient"
* participant[patient].actor.identifier.system 1..1 MS
* participant[patient].actor.identifier.system ^short = "Patient pnr identifier system | SHOULD be an identifier system from a national Patient profile."
* participant[patient].actor.identifier.system ^definition = "The namespace that identifies the type of personal identifier used to reference the patient. SHALL be a national patient identifier system appropriate for the patient's country of origin, such as a national person number or coordination number system. This aligns with the identifier systems accepted by the [PortalPatient](StructureDefinition-portal-patient.html) profile."


* participant[patient].actor.reference 0..0 MS

