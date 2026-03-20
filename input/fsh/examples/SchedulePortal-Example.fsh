Instance: SchedulePortalExample
InstanceOf: SchedulePortal
Usage: #example
Title: "Example SchedulePortal"
Description: "Example SchedulePortal representing planned working time for a practitioner in a specific role."

* id = "schedule-1"
* meta.profile[+] = Canonical(SchedulePortal)
* active = true
* actor[+] = Reference(PractitionerRole/practitioner-role-1) "Anna Andersson - Extraktion"
* planningHorizon.start = "2026-04-01T08:00:00+02:00"
* planningHorizon.end = "2026-04-30T17:00:00+02:00"
* comment = "Schemalagd arbetstid för april 2026."
