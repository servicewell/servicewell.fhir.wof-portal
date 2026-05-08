// naming pattern is <resource name>-<context of identifier>-<index if there are multiple identifiers of the same context>

Invariant: appointment-idsys-1
Description: "identifier[sourceAppointmentId].system SHALL match the canonical endpoint identifier system URI pattern for appointment context."
Severity: #error
Expression: "$this.matches('^https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-appointment/[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$')"


Invariant: appointment-idsys-2
Description: "identifier[sourceSlot-id].system SHALL match the canonical endpoint identifier system URI pattern for slot context."
Severity: #error
Expression: "$this.matches('^https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-slot-id/[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$')"


Invariant: device-idsys-1
Description: "identifier[deviceId].system SHALL match the canonical endpoint identifier system URI pattern for device context."
Severity: #error
Expression: "$this.matches('^https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-device-id/[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$')"


Invariant: activitydefinition-idsys-1
Description: "identifier[sourceId].system SHALL match the canonical endpoint identifier system URI pattern for activity definition context."
Severity: #error
Expression: "$this.matches('^https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-activitydefinition/[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$')"


Invariant: healthcareservice-idsys-1
Description: "identifier[sourceId].system SHALL match the canonical endpoint identifier system URI pattern for healthcare service context."
Severity: #error
Expression: "$this.matches('^https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-healthcareservice/[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$')"


Invariant: patient-idsys-1
Description: "identifier[sourceId].system SHALL match the canonical endpoint identifier system URI pattern for patient context."
Severity: #error
Expression: "$this.matches('^https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-patient/[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$')"


Invariant: practitionerrole-idsys-1
Description: "identifier[sourceId].system SHALL match the canonical endpoint identifier system URI pattern for practitioner role context."
Severity: #error
Expression: "$this.matches('^https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-practitioner-role/[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$')"
