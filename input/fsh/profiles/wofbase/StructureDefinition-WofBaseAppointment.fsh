Profile: WofBaseAppointment
Parent: ihe-sched-appt
Id: wof-base-appointment
Title: "Wof Base Appointment"
Description: "Base profile of wof Appointment. Inherits IHE Scheduling Appointment."


* ^url = "https://canonical.fhir.link/servicewell/wof-base/StructureDefinition/wof-base-appointment"
* ^abstract = true


* meta.profile 1..* MS
* meta.profile ^short = "Profile declaration for this portal resource"
* meta.profile ^definition = "Identifies that the resource conforms to WofBaseAppointment so clients can safely process it as the WOF Portal service concept profile."
* meta.profile insert Obligation($wof-portal-server-actor, #SHALL:populate)
* meta.versionId 0..1
* meta.versionId MS
* meta.versionId ^short = "Server-managed resource version"
* meta.versionId ^definition = "The technical resource version supplied by the server for change tracking of this specific WofBaseAppointment instance."
* meta.versionId insert Obligation($wof-portal-server-actor, #SHALL:populate)

* serviceType 
* identifier 1..* MS
* status 1..1
* participant 1..*

* requestedPeriod 1..1
* reasonCode 0..*


* comment 0..1 MS


// ---- Explicitly prohibited elements (not used in this profile) ----
* implicitRules 0..0
* modifierExtension 0..0
* text 0..0
* contained 0..0
* cancelationReason 0..0
* specialty 0..0
* appointmentType 0..0
* reasonReference 0..0
* priority 0..0
* description 0..0
* minutesDuration 0..0
* slot 0..0
* created 0..0
* patientInstruction 0..0
* basedOn 0..0


