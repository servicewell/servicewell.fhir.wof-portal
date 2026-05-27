ValueSet: AvailableAppointmentStatuses
Id: available-appointment-statuses
Title: "Find Appointment Statuses"
Description: "Value set for allowed appointment statuses in WOF when an appointment isn't booked yet."

* ^status = #active

* include http://hl7.org/fhir/appointmentstatus#proposed "The appointment is listed as bookable"
* include http://hl7.org/fhir/appointmentstatus#pending "The appointment is pending confirmation, used in the $book operation payload."


ValueSet: BookedAppointmentStatuses
Id: booked-appointment-statuses
Title: "Booked Appointment Statuses"
Description: "Value set for allowed appointment statuses in WOF when an appointment is booked."

* ^status = #active

* include http://hl7.org/fhir/appointmentstatus#booked "The appointment is confirmed to occur at the specified date/time. | A successful book response returns status #booked." 
* include http://hl7.org/fhir/appointmentstatus#cancelled "Used in the $book operation payload to request cancellation of an appointment"
