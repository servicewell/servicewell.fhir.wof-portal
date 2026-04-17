
Extension: PortalConsentToMarketing
Id: ext-consent-to-marketing
Title: "Portal Consent To Marketing"
Description: "Indicates whether the patient has consented to receive marketing communication in the portal context."
* ^status = #draft
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* ^url = "http://portal.wof.purified.link/fhir/StructureDefinition/extConsentToMarketing"
* value[x] only boolean
* value[x] ^short = "Marketing consent flag"
* value[x] ^definition = "Boolean flag indicating if the patient has given consent to receive marketing-related communication."
* valueBoolean 1..1 MS


