Alias: $csServiceType = http://portal.wof.purified.link/fhir/CodeSystem/csServiceType

Instance: 2a378b06-0444-4789-b4e2-f43465e1a6d7
InstanceOf: PortalFindAppointmentBundle
Usage: #example
Title: "FindAppointments Response"
Description: "API response for the $find-appointments operation returning a Bundle of available appointment slots."
* meta.lastUpdated = "2026-04-17T19:58:23.3446353+00:00"
* meta.profile = Canonical(PortalFindAppointmentBundle)
* type = #searchset
* total = 64
* entry[0].fullUrl = "http://api-no.wellonfhir.se/demo/1.0/R4/fhir/Appointment/001-2026-04-20T081000-B544-E472-R12" //innehåller egentligen ':' -> invalid
* entry[=].resource = 001-2026-04-20T081000-B544-E472-R12  //innehåller egentligen ':' -> invalid
* entry[=].search.mode = #match
* entry[+].fullUrl = "http://api-no.wellonfhir.se/demo/1.0/R4/fhir/Appointment/001-2026-04-20T084000-B544-E472-R12" //innehåller egentligen ':' -> invalid
* entry[=].resource = 001-2026-04-20T084000-B544-E472-R12  //innehåller egentligen ':' -> invalid
* entry[=].search.mode = #match
* entry[+].fullUrl = "http://api-no.wellonfhir.se/demo/1.0/R4/fhir/Appointment/001-2026-04-20T091000-B544-E472-R12" //innehåller egentligen ':' -> invalid
* entry[=].resource = 001-2026-04-20T091000-B544-E472-R12  //innehåller egentligen ':' -> invalid
* entry[=].search.mode = #match
* entry[+].fullUrl = "http://api-no.wellonfhir.se/demo/1.0/R4/fhir/Appointment/001-2026-04-20T094000-B544-E472-R12" //innehåller egentligen ':' -> invalid
* entry[=].resource = 001-2026-04-20T094000-B544-E472-R12  //innehåller egentligen ':' -> invalid
* entry[=].search.mode = #match

Instance: 001-2026-04-20T081000-B544-E472-R12  //innehåller egentligen ':' -> invalid
InstanceOf: PortalAvailableAppointment
Usage: #inline
* meta.profile = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/portal-available-appointment"
* identifier[0].system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/slot-id"
* identifier[=].value = "001-2026-04-20T081000-B544-E472-R12"   //innehåller egentligen ':' -> invalid
* identifier[+].system = "https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-appointment"
* identifier[=].value = "efaad744-9faa-4075-8aa9-bb03aad9291b"
* status = #proposed
* serviceType = $csServiceType#tannrens "Tannrens"
* start = "2026-04-20T06:10:00+00:00"
* end = "2026-04-20T06:40:00+00:00"
* participant[practitionerRole].actor = Reference(PractitionerRole/7476f314-8b67-4efe-8364-115cee61f32a) "Tannpleier Lars Jansen"
* participant[practitionerRole].status = #accepted
* extension[activityDefinitionReference].valueReference = Reference(ActivityDefinition/348eeb27-0e1a-4337-9f21-4e84dc5a3fd9) "Tannrens"
* requestedPeriod.start = "2026-04-20T06:10:00+00:00"
* requestedPeriod.end = "2026-04-20T06:40:00+00:00"
// * participant[+].actor = Reference(ActivityDefinition/348eeb27-0e1a-4337-9f21-4e84dc5a3fd9) "Tannrens"    <- innehåller egentligen denna, men detta är invalid



Instance: 001-2026-04-20T084000-B544-E472-R12  //innehåller egentligen ':' -> invalid
InstanceOf: PortalAvailableAppointment
Usage: #inline
* meta.profile = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/portal-available-appointment"
* identifier[0].system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/slot-id"
* identifier[=].value = "001-2026-04-20T084000-B544-E472-R12"   //innehåller egentligen ':' -> invalid
* identifier[+].system = "https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-appointment"
* identifier[=].value = "efaad744-9faa-4075-8aa9-bb03aad9291b"
* status = #proposed
* serviceType = $csServiceType#tannrens "Tannrens"
* start = "2026-04-20T06:40:00+00:00"
* end = "2026-04-20T07:10:00+00:00"
* participant[practitionerRole].actor = Reference(PractitionerRole/7476f314-8b67-4efe-8364-115cee61f32a) "Tannpleier Lars Jansen"
* participant[practitionerRole].status = #accepted
* extension[activityDefinitionReference].valueReference = Reference(ActivityDefinition/348eeb27-0e1a-4337-9f21-4e84dc5a3fd9) "Tannrens"
* requestedPeriod.start = "2026-04-20T06:40:00+00:00"
* requestedPeriod.end = "2026-04-20T07:10:00+00:00"
// * participant[+].actor = Reference(ActivityDefinition/348eeb27-0e1a-4337-9f21-4e84dc5a3fd9) "Tannrens"    <- innehåller egentligen denna, men detta är invalid



Instance: 001-2026-04-20T091000-B544-E472-R12 //innehåller egentligen ':' -> invalid
InstanceOf: PortalAvailableAppointment
Usage: #inline
* meta.profile = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/portal-available-appointment"
* identifier[0].system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/slot-id"
* identifier[=].value = "001-2026-04-20T091000-B544-E472-R12"  //innehåller egentligen ':' -> invalid
* identifier[+].system = "https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-appointment"
* identifier[=].value = "efaad744-9faa-4075-8aa9-bb03aad9291b"
* status = #proposed
* serviceType = $csServiceType#tannrens "Tannrens"
* start = "2026-04-20T07:10:00+00:00"
* end = "2026-04-20T07:40:00+00:00"
* participant[practitionerRole].actor = Reference(PractitionerRole/7476f314-8b67-4efe-8364-115cee61f32a) "Tannpleier Lars Jansen"
* participant[practitionerRole].status = #accepted
* extension[activityDefinitionReference].valueReference = Reference(ActivityDefinition/348eeb27-0e1a-4337-9f21-4e84dc5a3fd9) "Tannrens"
* requestedPeriod.start = "2026-04-20T07:10:00+00:00"
* requestedPeriod.end = "2026-04-20T07:40:00+00:00"
// * participant[+].actor = Reference(ActivityDefinition/348eeb27-0e1a-4337-9f21-4e84dc5a3fd9) "Tannrens"    <- innehåller egentligen denna, men detta är invalid



Instance: 001-2026-04-20T094000-B544-E472-R12 //innehåller egentligen ':' -> invalid
InstanceOf: PortalAvailableAppointment
Usage: #inline
* meta.profile = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/portal-available-appointment"
* identifier[0].system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/slot-id"
* identifier[=].value = "001-2026-04-20T094000-B544-E472-R12"  //innehåller egentligen ':' -> invalid
* identifier[+].system = "https://canonical.fhir.link/servicewell/wof-portal/identifier-system/endpoint-identifier-system-for-appointment"
* identifier[=].value = "efaad744-9faa-4075-8aa9-bb03aad9291b"
* status = #proposed
* serviceType = $csServiceType#tannrens "Tannrens"
* start = "2026-04-20T07:40:00+00:00"
* end = "2026-04-20T08:10:00+00:00"
* participant[practitionerRole].actor = Reference(PractitionerRole/7476f314-8b67-4efe-8364-115cee61f32a) "Tannpleier Lars Jansen"
* participant[practitionerRole].status = #accepted
* extension[activityDefinitionReference].valueReference = Reference(ActivityDefinition/348eeb27-0e1a-4337-9f21-4e84dc5a3fd9) "Tannrens"
* requestedPeriod.start = "2026-04-20T07:40:00+00:00"
* requestedPeriod.end = "2026-04-20T08:10:00+00:00"
// * participant[+].actor = Reference(ActivityDefinition/348eeb27-0e1a-4337-9f21-4e84dc5a3fd9) "Tannrens"    <- innehåller egentligen denna, men detta är invalid
