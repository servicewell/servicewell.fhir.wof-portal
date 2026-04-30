
Invariant: pba-idsys
Description: "identifier[sourceAppointmentId].system SHALL match the canonical endpoint identifier system URI pattern for appointment context."
Severity: #error
Expression: "$this.matches('^https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-appointment/[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$')"


Invariant: paa-idsys
Description: "identifier[sourceAppointmentId].system SHALL match the canonical endpoint identifier system URI pattern for appointment context."
Severity: #error
Expression: "$this.matches('^https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-slot-id/[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$')"

