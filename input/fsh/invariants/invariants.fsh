
Invariant: pba-idsys
Description: "identifier[sourceAppointmentId].system SHALL match the canonical endpoint identifier system URI pattern for appointment context."
Severity: #error
Expression: "$this.matches('^https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-appointment/[ \\r\\n\\t\\S]+$')"


Invariant: paa-idsys
Description: "identifier[sourceAppointmentId].system SHALL match the canonical endpoint identifier system URI pattern for appointment context."
Severity: #error
Expression: "$this.matches('^https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-slot/[ \\r\\n\\t\\S]+$')"

