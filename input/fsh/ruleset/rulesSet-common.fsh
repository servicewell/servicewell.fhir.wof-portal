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