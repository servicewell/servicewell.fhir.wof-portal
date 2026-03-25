Profile: PortalFindAppointmentBundle
Parent: ihe-sched-avail-bundle // IHE ITI available Appointment bundle Profile
Id: portal-find-appointment-bundle
Title: "Portal Find Appointment response"
Description: """A bundle containing available appointments based on search parameters.
 Returned as the result of the '$find' operation and Appointment search."""
* ^status = #active

* entry[entry-appt].resource only portal-available-appointment
