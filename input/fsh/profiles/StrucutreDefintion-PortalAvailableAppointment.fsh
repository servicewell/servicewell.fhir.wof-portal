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


* identifier ^short = "Must include at least one identifier that identifies the bookable time slot in the source system. Endpoint specific."
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = ""
* identifier ^slicing.ordered = false


* identifier contains slot-id 1..1 MS
* identifier[slot-id].type.coding.code  insert Obligation($wof-portal-client-actor, #MAY:ignore)
* identifier[slot-id].type.coding.code = #FILL
* identifier[slot-id].system obeys paa-idsys
* identifier[slot-id].system 1..1 MS
* identifier[slot-id].system ^short = "Pattern from namingsystem EndpointIdentifierSystemForSlotId"
* identifier[slot-id].system ^definition = "See [EndpointIdentifierSystemForSlotId](./NamingSystem-EndpointIdentifierSystemForSlotId.html) for expected identifier.system values."
* identifier[slot-id].value 1..1 MS
* identifier[slot-id].value ^short = "The source system's id for the available slot"
* identifier[slot-id].system ^example[0].label = "uri"
* identifier[slot-id].system ^example[0].valueUri = "https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-slot-id/serviceO-12345"
* identifier[slot-id].value ^example[0].label = "value"
* identifier[slot-id].value ^example[0].valueString = "slot-2024-00142"


* supportingInformation ^slicing.discriminator.type = #value
* supportingInformation ^slicing.discriminator.path = "$type"
* supportingInformation ^slicing.rules = #open
* supportingInformation ^slicing.description = ""
* supportingInformation ^slicing.ordered = false

* supportingInformation contains deviceId 0..1 MS
* supportingInformation[deviceId] ^short = "Identifies the chair or treatment unit required for the booking when a specific device must be used."
* supportingInformation[deviceId] ^definition = "Used when the appointment must be booked against a specific chair or treatment unit. If the practitioner is tied to a specific chair at the time of booking, this information shall be included here. The identifier.value is a logical reference to the unique identifier of that chair or treatment unit."

* supportingInformation[deviceId].identifier.value 1..1 MS
* supportingInformation[deviceId].identifier.value ^short = "Logical reference to the unique identifier of the required chair or treatment unit."
* supportingInformation[deviceId].identifier.value ^definition = "The logical reference to the unique identifier of the chair or treatment unit that must be used for the appointment booking."
* supportingInformation[deviceId].identifier.use 0..0
* supportingInformation[deviceId].reference 0..0
* supportingInformation[deviceId].type = #Device
* supportingInformation[deviceId].display 0..0


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


