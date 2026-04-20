The `{endpointId}` part is the WOF Portal FHIR Endpoint id. If the source system needs to be identified, resolve the endpoint using:
`fhir/Endpoint/[id]`

That lookup can reveal the originating source system, for example OpusDental, Frenda, Muntra, or other connected backend systems.

These identifiers are used for traceability to source records that do not exist as standalone FHIR instances in WOF Portal, and are therefore referenced using identifier-based references rather than FHIR references.
