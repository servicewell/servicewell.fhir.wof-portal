
Extension: PortalConsentToMarketing
Id: ext-consent-to-marketing
Title: "Portal Consent To Marketing"
Description: "Patient consent to marketing communication."
* ^status = #draft
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* ^url = "http://portal.wof.purified.link/fhir/StructureDefinition/extConsentToMarketing"
* value[x] only boolean
* valueBoolean 1..1 MS


