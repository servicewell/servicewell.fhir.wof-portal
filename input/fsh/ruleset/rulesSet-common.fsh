Alias: $obligation = http://hl7.org/fhir/StructureDefinition/obligation
Alias: $wof-portal-server-actor = https://canonical.fhir.link/servicewell/wof-portal/ActorDefinition/wof-portal-server
Alias: $wof-portal-client-actor = https://canonical.fhir.link/servicewell/wof-portal/ActorDefinition/wof-portal-client
Alias: $service-type-id = http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/service-type-id

// -----------------------------------------------------------------
// Obligations
// 1. Add the obligation extension instance on the ElementDefinition
// 2. Subextension: actor (canonical)
// 3. Subextension: code
//
// Example: 
//  actorCanonical  = http://canonical.fhir.link/servicewell/wof-connect/ActorDefinition/frenda-pms
//  actionCode      = #SHALL:populate
// -----------------------------------------------------------------

RuleSet: Obligation(actorCanonical, actionCode)
* ^extension[+].url = $obligation
* ^extension[=].extension[+].url = "actor"
* ^extension[=].extension[=].valueCanonical = {actorCanonical}
* ^extension[=].extension[+].url = "code"
* ^extension[=].extension[=].valueCode = {actionCode}
