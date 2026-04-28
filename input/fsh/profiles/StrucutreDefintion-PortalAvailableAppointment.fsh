Profile: PortalAvailableAppointment
Parent: WofBaseAppointment
Id: portal-available-appointment
Title: "Available Appointment Portal"
Description: """The public API model for 'Available Appointments'  
Appointment representation of an available appointment.
 Inherits IHE Scheduling Appointment.  
"""

* meta.profile = Canonical(PortalAvailableAppointment)

* meta.versionId ^definition = "The technical resource version supplied by the server for change tracking of this specific PortalAvailableAppointment instance."
* meta.profile ^definition = "Identifies that the resource conforms to PortalAvailableAppointment so clients can safely process it as the WOF Portal service concept profile."


* identifier.type insert Obligation($wof-portal-client-actor, #SHOULD:ignore)
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[0].path = "type.coding.code"
* identifier ^slicing.rules = #open
* identifier contains sourceSystemIdentifier 1..1 and slot-id 1..1 MS
* identifier[sourceSystemIdentifier].type.text = "source systems appointment concept"
* identifier[sourceSystemIdentifier].system 1..1 MS
* identifier[sourceSystemIdentifier].system ^short = "Identifier-based reference to the Appointment concept in the source system."
* identifier[sourceSystemIdentifier].system ^definition = "See [EndpointIdentifierSystemForAppointment](./NamingSystem-EndpointIdentifierSystemForAppointment.html) for expected identifier.system values."
* identifier[sourceSystemIdentifier].value 1..1 MS
* identifier[sourceSystemIdentifier].value ^short = "Source systems identifier for the appointment"
* identifier[sourceSystemIdentifier].type.coding.code = #sourcesystem-identifier
* identifier[sourceSystemIdentifier].type.coding.code MS
* identifier[slot-id].system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/slot-id"
* identifier[slot-id].value  1..1 MS
* identifier[slot-id].type.coding.code = #slot-id
* identifier[slot-id].type.coding.code MS
* identifier[slot-id].type.text = "Identifier-based reference to the Slot resource that represents this available appointment in the source system."

* status = #proposed
* serviceType 1..*
* serviceType.coding 1..*
* serviceType.coding.system 1..1
* serviceType.coding.code 1..1
* serviceType.text

* start 1..1
* end 1..1

* requestedPeriod 1..1
* requestedPeriod.start 1..1
* requestedPeriod.end 1..1

* participant ^slicing.discriminator.type = #type
* participant ^slicing.discriminator.path = "actor.resolve()"
* participant ^slicing.rules = #open
* participant ^slicing.description = ""
* participant ^slicing.ordered = false

* participant contains healthcareService 0..1 MS and practitionerRole 0..1 MS
* participant[healthcareService].actor only Reference(HealthcareServicePortal)
* participant[practitionerRole].actor only Reference(PractitionerRolePortal)

* extension contains ActivityDefinitionReference named activityDefinitionReference 1..1
* extension[activityDefinitionReference] ^short = "Reference to related service definition"
* extension[activityDefinitionReference] ^definition = "Reference to the ActivityDefinition that represents the service concept for this appointment."



// ---- Explicitly prohibited elements (not used in this profile) ----
* implicitRules 0..0
* modifierExtension 0..0
* text 0..0
* contained 0..0
* cancelationReason 0..0
* serviceCategory 0..0
* specialty 0..0
* appointmentType 0..0
* reasonCode 0..0
* reasonReference 0..0
* priority 0..0
* description 0..0
* minutesDuration 0..0
* slot 0..0
* created 0..0
* comment 0..0
* patientInstruction 0..0
* basedOn 0..0


