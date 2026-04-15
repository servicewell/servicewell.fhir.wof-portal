Alias: $csServiceType = http://portal.wof.purified.link/fhir/CodeSystem/csServiceType

Instance: a628f631-cb5e-42b4-afe1-81815e3d97c2
InstanceOf: Bundle
Usage: #example
* type = #searchset
* total = 153
* entry[0].fullUrl = "http://api-no.wellonfhir.se/demo/1.0/R4/fhir/Appointment/001-2026-04-14T161500-B578-E505-R37"
* entry[=].resource = 001-2026-04-14T161500-B578-E505-R37
* entry[=].search.mode = #match
* entry[+].fullUrl = "http://api-no.wellonfhir.se/demo/1.0/R4/fhir/Appointment/001-2026-04-14T164500-B578-E505-R37"
* entry[=].resource = 001-2026-04-14T164500-B578-E505-R37
* entry[=].search.mode = #match

Instance: 001-2026-04-14T161500-B578-E505-R37
InstanceOf: PortalAvailableAppointment
Usage: #inline
* meta.profile = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/portal-available-appointment"
* identifier[0].system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/slot-id"
* identifier[=].value = "001-2026-04-14T16:15:00-B578-E505-R37"
* identifier[+].system = "https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-appointment/"
* identifier[=].value = "efaad744-9faa-4075-8aa9-bb03aad9291b"
* status = #proposed
* serviceType = $csServiceType#tannrens "Tannrens"
* serviceType.text = "Tannrens"
* start = "2026-04-14T14:15:00+00:00"
* end = "2026-04-14T14:45:00+00:00"
* participant[0].actor = Reference(PractitionerRole/7476f314-8b67-4efe-8364-115cee61f32a) "Tannpleier Lars Jansen"
* participant[=].status = #accepted
* participant[+].actor = Reference(ActivityDefinition/348eeb27-0e1a-4337-9f21-4e84dc5a3fd9) "Tannrens"
* participant[=].status = #accepted
* requestedPeriod.start = "2026-04-14T14:15:00+00:00"
* requestedPeriod.end = "2026-04-14T14:45:00+00:00"

Instance: 001-2026-04-14T164500-B578-E505-R37
InstanceOf: PortalAvailableAppointment
Usage: #inline
* meta.profile = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/portal-available-appointment"
* identifier[0].system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/slot-id"
* identifier[=].value = "001-2026-04-14T16:45:00-B578-E505-R37"
* identifier[+].system = "https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-appointment/"
* identifier[=].value = "efaad744-9faa-4075-8aa9-bb03aad9291b"
* status = #proposed
* serviceType = $csServiceType#tannrens "Tannrens"
* serviceType.text = "Tannrens"
* start = "2026-04-14T14:45:00+00:00"
* end = "2026-04-14T15:15:00+00:00"
* participant[0].actor = Reference(PractitionerRole/7476f314-8b67-4efe-8364-115cee61f32a) "Tannpleier Lars Jansen"
* participant[=].status = #accepted
* participant[+].actor = Reference(ActivityDefinition/348eeb27-0e1a-4337-9f21-4e84dc5a3fd9) "Tannrens"
* participant[=].status = #accepted
* requestedPeriod.start = "2026-04-14T14:45:00+00:00"
* requestedPeriod.end = "2026-04-14T15:15:00+00:00"