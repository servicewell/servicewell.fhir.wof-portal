Alias: $csServiceType = http://portal.wof.purified.link/fhir/CodeSystem/csServiceType

Instance: ce19bf58-76af-4f56-bf92-f225bef946cb
InstanceOf: Bundle
Usage: #example
* type = #searchset
* total = 5
* entry[0].fullUrl = "http://api-no.wellonfhir.se/demo/1.0/R4/fhir/ActivityDefinition/b1c8d4ab-f160-4d05-86b4-2185400e6c92"
* entry[=].resource = b1c8d4ab-f160-4d05-86b4-2185400e6c92
* entry[=].search.mode = #match
* entry[+].fullUrl = "http://api-no.wellonfhir.se/demo/1.0/R4/fhir/ActivityDefinition/7e26aef8-2b9e-401b-bb19-30c870e326d3"
* entry[=].resource = 7e26aef8-2b9e-401b-bb19-30c870e326d3
* entry[=].search.mode = #match
* entry[+].fullUrl = "http://api-no.wellonfhir.se/demo/1.0/R4/fhir/ActivityDefinition/bab44769-0bbd-484a-b50d-405efa10f92b"
* entry[=].resource = bab44769-0bbd-484a-b50d-405efa10f92b
* entry[=].search.mode = #match
* entry[+].fullUrl = "http://api-no.wellonfhir.se/demo/1.0/R4/fhir/ActivityDefinition/348eeb27-0e1a-4337-9f21-4e84dc5a3fd9"
* entry[=].resource = 348eeb27-0e1a-4337-9f21-4e84dc5a3fd9
* entry[=].search.mode = #match
* entry[+].fullUrl = "http://api-no.wellonfhir.se/demo/1.0/R4/fhir/ActivityDefinition/05909f92-e86b-436f-8fdb-8c45ef03e11b"
* entry[=].resource = 05909f92-e86b-436f-8fdb-8c45ef03e11b
* entry[=].search.mode = #match

Instance: b1c8d4ab-f160-4d05-86b4-2185400e6c92
InstanceOf: ActivityDefinitionPortal
Usage: #inline
* meta.versionId = "1"
* meta.profile = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/activity-definition-portal"
* extension.url = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/ext-sort-key"
* extension.valueInteger = 4
* name = "Konsultasjon Invisalign"
* title = "Konsultasjon Invisalign"
* status = #active
* date = "2025-10-15"
* kind = #ServiceRequest
* code = $csServiceType#invisalign "Konsultasjon Invisalign"

Instance: 7e26aef8-2b9e-401b-bb19-30c870e326d3
InstanceOf: ActivityDefinitionPortal
Usage: #inline
* meta.versionId = "1"
* meta.profile = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/activity-definition-portal"
* extension.url = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/ext-sort-key"
* extension.valueInteger = 2
* name = "Undersøkelse"
* title = "Undersøkelse"
* status = #active
* date = "2025-09-29"
* description = "Undersøkelse inkludert røntgenbilder og lett rens"
* kind = #ServiceRequest
* code = $csServiceType#undersokelse "Undersøkelse"
* code.text = "Undersøkelse inkludert røntgenbilder og lett rens"

Instance: bab44769-0bbd-484a-b50d-405efa10f92b
InstanceOf: ActivityDefinitionPortal
Usage: #inline
* meta.versionId = "1"
* meta.profile = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/activity-definition-portal"
* extension[0].url = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/ext-sort-key"
* extension[=].valueInteger = 3
* extension[+].extension.url = "campaign"
* extension[=].extension.valueCode = #airflow
* extension[=].url = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/ext-campaigns"
* name = "Kampanje"
* title = "Kampanje - Undersøkelse og airflow"
* status = #active
* date = "2025-09-29"
* description = "Undersøkelse med røntgenbilder og airflow rens"
* kind = #ServiceRequest
* code = $csServiceType#kampanje "Kampanje"
* code.text = "Undersøkelse med røntgenbilder og airflow rens"

Instance: 348eeb27-0e1a-4337-9f21-4e84dc5a3fd9
InstanceOf: ActivityDefinitionPortal
Usage: #inline
* meta.versionId = "1"
* meta.profile = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/activity-definition-portal"
* extension.url = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/ext-sort-key"
* extension.valueInteger = 1
* name = "Tannrens"
* title = "Tannrens"
* status = #active
* date = "2025-09-29"
* description = "Tannrens hos tannpleier"
* kind = #ServiceRequest
* code = $csServiceType#tannrens "Tannrens"
* code.text = "Tannrens hos tannpleier"

Instance: 05909f92-e86b-436f-8fdb-8c45ef03e11b
InstanceOf: ActivityDefinitionPortal
Usage: #inline
* meta.versionId = "1"
* meta.profile = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/activity-definition-portal"
* extension.url = "https://canonical.fhir.link/servicewell/wof-portal/StructureDefinition/ext-sort-key"
* extension.valueInteger = 0
* name = "Akutt"
* title = "Akutt"
* status = #active
* date = "2025-09-29"
* description = "En akutt time hos tannlegen er for pasienter som har sterke smerter, tannskader eller andre akutte problemer i munn og tenner. Tannlegen undersøker årsaken, gir nødvendig smertelindring og behandler eller midlertidig stabiliserer tannen. Målet er å lindre smerte og hindre at tilstanden blir verre, fram til eventuell videre behandling kan planlegges."
* kind = #ServiceRequest
* code = $csServiceType#akutt "Akutt"
* code.text = "En akutt time hos tannlegen er for pasienter som har sterke smerter, tannskader eller andre akutte problemer i munn og tenner. Tannlegen undersøker årsaken, gir nødvendig smertelindring og behandler eller midlertidig stabiliserer tannen. Målet er å lindre smerte og hindre at tilstanden blir verre, fram til eventuell videre behandling kan planlegges."