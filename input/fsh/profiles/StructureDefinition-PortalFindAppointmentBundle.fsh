Profile: PortalFindAppointmentBundle
Parent: ihe-sched-avail-bundle // IHE ITI available Appointment bundle Profile
Id: portal-find-appointment-bundle
Title: "Portal Find Appointment response"
Description: """A bundle containing available appointments based on search parameters.
 Returned as the result of the '$find' operation and Appointment search."""
* ^status = #active


* meta.profile 1..* MS
* meta.profile ^short = "Profile declaration for this portal resource"
* meta.profile ^definition = "Identifies that the resource conforms to PortalFindAppointmentBundle so clients can safely process it as the WOF Portal service concept profile."
* meta.profile insert Obligation($wof-portal-server-actor, #SHALL:populate)
* meta.versionId 0..1
* meta.versionId MS
* meta.versionId ^short = "Server-managed resource version"
* meta.versionId ^definition = "The technical resource version supplied by the server for change tracking of this specific PortalFindAppointmentBundle instance."
* meta.versionId insert Obligation($wof-portal-server-actor, #SHALL:populate)


* entry[entry-appt].resource only portal-available-appointment
