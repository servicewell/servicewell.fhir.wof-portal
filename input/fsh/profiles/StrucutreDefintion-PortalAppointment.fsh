Profile: PortalAppointment
Parent: WofBaseAppointment
Id: portal-appointment
Title: "Appointment Portal"
Description: """The public API model for 'Portal Appointment  
Appointment representation of a booked visit.
 Inherits IHE Scheduling Appointment.  

 This profile is to be used in a patient context and where the appointment status is anything other than '#proposed'.

"""
* meta.versionId ^definition = "The technical resource version supplied by the server for change tracking of this specific PortalAppointment instance."
* meta.profile ^definition = "Identifies that the resource conforms to PortalAppointment so clients can safely process it as the WOF Portal service concept profile."


* identifier 1..* MS
* identifier ^short = "Must include at least one identifier that identifies the bookable time slot in the source system. Endpoint specific."
* identifier.system 1..1 MS
* identifier.system ^short = "Pattern from namingsystem EndpointIdentifierSystemForAppointment"
* identifier.system ^definition = "See [EndpointIdentifierSystemForAppointment](./NamingSystem-EndpointIdentifierSystemForAppointment.html) for expected identifier.system values."
* identifier.value 1..1 MS
* identifier.value ^short = "The source system's id for the available slot"
* identifier.system ^example[0].label = "uri"
* identifier.system ^example[0].valueUri = "https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-appointment/serviceO-12345"
* identifier.value ^example[0].label = "value"
* identifier.value ^example[0].valueString = "apt-2024-00142"


* supportingInformation ^slicing.discriminator.type = #value
* supportingInformation ^slicing.discriminator.path = "$this"
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
* supportingInformation[deviceId].display 0..0


* participant 3..3

* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "actor.type"
* participant ^slicing.rules = #open
* participant ^slicing.description = ""
* participant ^slicing.ordered = false

* participant contains healthcareService 0..1 and practitionerRole 0..1 and patient 1..1

* participant[healthcareService].actor.type = #HealthcareService
* participant[healthcareService].actor only Reference(HealthcareServicePortal)

* participant[practitionerRole].actor.type = #PractitionerRole
* participant[practitionerRole].actor only Reference(PractitionerRolePortal)

* participant[patient].actor.identifier 1..1
* participant[patient].actor.identifier.value 1..1 MS
* participant[patient].actor.identifier.value ^short = "personalnumber as reference to the Patient"
* participant[patient].actor.identifier.system 1..1 MS
* participant[patient].actor.identifier.system ^short = "Patient pnr identifier system | SHOULD be an identifier system from a national FHIR Patient profile."
* participant[patient].actor.identifier.system ^definition = "The namespace that identifies the type of personal identifier used to reference the patient. Should be a identifier system from the patient's country of origin FHIR Patient profile, such as a national person number or coordination number system."
* participant[patient].status = #accepted

* participant[patient].actor.type = #Patient
* participant[patient].actor only Reference(PortalPatient)
* participant[patient].actor.reference 0..0 MS

* comment 0..1 MS

* extension contains WofBaseCharacteristic named characteristic 0..1
* extension contains WofBaseAppointmentUpdate named appointmentUpdate 0..1
* extension contains ActivityDefinitionReference named activityDefinitionReference 0..1

* extension[characteristic] ^short = "Service and booking characteristics"
* extension[characteristic] ^definition = "Structured characteristics describing scheduling, workflow, and security capabilities for the appointment context."
* extension[appointmentUpdate] ^short = "Current appointment update status"
* extension[appointmentUpdate] ^definition = "Current rescheduling and cancellation state for the appointment, including web rescheduling count."
* extension[activityDefinitionReference] ^short = "Reference to related activity definition"
* extension[activityDefinitionReference] ^definition = "Reference to the ActivityDefinition that represents the service concept for this appointment."
* extension[activityDefinitionReference] insert Obligation($wof-portal-server-actor, #SHALL:handle)

* extension[characteristic].extension[scheduling].extension[childPatientThreshold] 0..1 MS
* extension[characteristic].extension[scheduling].extension[minChangeHours] 0..1 MS
* extension[characteristic].extension[scheduling].extension[webReschedulingCountAllowed] 0..1 MS
* extension[characteristic].extension[scheduling].extension[schedulingAvailability] 0..1 MS
* extension[characteristic].extension[scheduling].extension[bookingConfirmation] 0..1 MS
* extension[characteristic].extension[scheduling].extension[bookingConfirmation].valueCoding.code MS


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
* patientInstruction 0..0
* basedOn 0..0

* extension contains PortalConsentToMarketing named consentToMarketing 0..1 MS
* extension[consentToMarketing] ^short = "Patient consent to marketing"
* extension[consentToMarketing] ^definition = "Indicates whether the patient has provided consent to receive marketing-related communication."
* extension[consentToMarketing] insert Obligation($wof-portal-server-actor, #SHALL:handle)

