Instance: BookAppointment
InstanceOf: OperationDefinition
Title: "Book / Modify / Cancel Appointment"
Description: """
Creates, modifies, or cancels an Appointment based on the supplied Appointment resource.

This operation corresponds to the IHE ITI Scheduling $book operation and:
- CREATES a new Appointment when a new, schedulable Appointment is supplied
- MODIFIES an existing Appointment when an updated Appointment is supplied
- CANCELS an existing Appointment when a cancellation Appointment is supplied

On success, the operation returns the finalized Appointment in an IHE Scheduled Availability Bundle.
"""
Usage: #definition
* name = "BookAppointment"
* status = #active
* kind = #operation
* code = #book              // Operation $book (OperationDefinition-appointment-book) from IHE ITI Scheduling Appointment Profile
* resource = #Appointment   // Operation based on Appointment
* system = false            // Not a system-level operation
* type = true
* instance = false          // Not an instance-level operation
* affectsState = true       // Write operation
* base = "https://profiles.ihe.net/ITI/Scheduling/OperationDefinition/appointment-book"

* outputProfile = Canonical(ihe-sched-avail-bundle) // IHE ITI Scheduling Bundle Profile

// in: Appointment request (create/modify/cancel)
* parameter[+].name = #appointment
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #Appointment
* parameter[=].targetProfile = Canonical(WofConnectAppointment) // IHE ITI Appointment Profile
* parameter[=].documentation = """
The Appointment to be created, modified, or cancelled.

- CREATE:
  - Appointment.id is absent or refers to a non-existing appointment
  - Appointment.status is 'pending'
- MODIFY:
  - Appointment.id identifies an existing appointment
  - Appointment.status is 'booked' and details (time, participants, etc.) are updated
- CANCEL:
  - Appointment.id identifies an existing appointment
  - Appointment.status is 'cancelled'
"""
// in: appointment reference (alternative to full resource for create/modify/cancel) - IHE ITI
* parameter[+].name = #appointment-reference
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "A resource id for one of proposed Appointments returned by a prior $find operation (e.g., Resource/1234).  References can be to an absolute URL, but servers only perform this operation on their own appointments."
* parameter[=].type = #Reference
* parameter[=].targetProfile = Canonical(WofConnectAppointment) 

// in: patient resource- IHE ITI
* parameter[+].name = #patient-resource
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "The Patient resource type is used to provide the patient information as known to the Scheduling client at the time of booking of the appointment."
* parameter[=].type = #Patient
* parameter[=].targetProfile = "http://hl7.org/fhir/StructureDefinition/Patient"

// in: booking comment - IHE ITI
* parameter[+].name = #comment
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The optional comment can be added for additional notes that could be useful for booking, canceling, or modifying an appointment"
* parameter[=].type = #string


// out: result Bundle (on success)
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #Bundle
* parameter[=].documentation = """
On success, returns a Bundle that SHALL conform to ihe-sched-avail-bundle, containing the resulting Appointment:
- status 'booked' for created or modified appointments
- status 'cancelled' for cancelled appointments

On error, an OperationOutcome is returned instead of this parameter.
"""
