Profile: PortalAppointment
Parent: WofBaseAppointment
Id: portal-appointment
Title: "Appointment Portal"
Description: """The public API model for 'Portal Appointment  
Appointment representation of a booked visit.
 Inherits IHE Scheduling Appointment.  

 This profile is to be used in a patient context and where the appointment status is anything other than '#proposed'.

"""


* identifier 1..* MS
* identifier.type insert Obligation($wof-portal-client-actor, #SHOULD:ignore)
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[0].path = "type.text"
* identifier ^slicing.rules = #open
* identifier contains sourceSystemIdentifier 1..1 MS
* identifier[sourceSystemIdentifier].type.text = "source systems appointment concept"
* identifier[sourceSystemIdentifier].system 1..1 MS
* identifier[sourceSystemIdentifier].system ^short = "Identifier-based reference to the Appointment concept in the source system."
* identifier[sourceSystemIdentifier].system ^definition = "See [EndpointIdentifierSystemForAppointment](./NamingSystem-EndpointIdentifierSystemForAppointment.html) for expected identifier.system values."
* identifier[sourceSystemIdentifier].value 1..1 MS
* identifier[sourceSystemIdentifier].value ^short = "Source systems identifier for the appointment"

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

* extension contains WofConnectCharacteristic named characteristic 0..1
* extension contains WofConnectAppointmentUpdate named appointmentUpdate 0..1
* extension contains ActivityDefinitionReference named activityDefinitionReference 0..1



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
* supportingInformation 0..0
* minutesDuration 0..0
* slot 0..0
* created 0..0
* patientInstruction 0..0
* basedOn 0..0

* extension contains PortalConsentToMarketing named consentToMarketing 0..1 MS
* extension[consentToMarketing] insert Obligation($wof-portal-server-actor, #SHOULD:populate)

