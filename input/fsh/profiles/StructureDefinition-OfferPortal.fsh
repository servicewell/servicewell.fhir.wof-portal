Profile: OfferPortal
Parent: Parameters
Id: offer-portal
Title: "OfferPortal"
Description: """
<p><b>OfferPortal</b> represents a bookable offering in a specific context.</p>

<p>It answers the question: <i>“Which service can be booked, by whom, and where — and what are the booking-facing settings in that context?”</i></p>

<ul>
  <li>Connects an <b>ActivityDefinitionPortal</b> (what) with a <b>HealthcareServicePortal</b> (where) and a <b>PractitionerRolePortal</b> (who).</li>
  <li>Represents the <b>context-specific</b> configuration for booking content.</li>
  <li>Is intended as a lightweight object for frontends to render booking options quickly.</li>
</ul>

<p>An OfferPortal contains references to:</p>
<ul>
  <li><b>activityDefinition</b> — Reference(ActivityDefinitionPortal)</li>
  <li><b>healthcareService</b> — Reference(HealthcareServicePortal)</li>
  <li><b>practitionerRole</b> — Reference(PractitionerRolePortal)</li>
</ul>

<p>OfferPortal may include booking-facing settings such as:</p>
<ul>
  <li><b>duration</b> — free-text (presentation value)</li>
  <li><b>price</b> — free-text (presentation value)</li>
  <li><b>bookingUrl</b> — deeplink for booking</li>
</ul>

<p><b>Important:</b> OfferPortal does <b>not</b> represent real-time availability. It does not include schedules, working hours, or bookable time slots.</p>

<p>OfferPortal is a context/read model intended to support fast, “chatty” consumption. It is not a replacement for scheduling or billing workflows.</p>
"""

// -------------------- SLICE: parameter by name --------------------
* parameter ^slicing.discriminator[0].type = #value
* parameter ^slicing.discriminator[0].path = "name"
* parameter ^slicing.rules = #open

* parameter contains offering 1..1

* parameter[offering].name = "offering" (exactly)

// -------------------- SLICE: offering.part by name --------------------
* parameter[offering].part ^slicing.discriminator[0].type = #value
* parameter[offering].part ^slicing.discriminator[0].path = "name"
* parameter[offering].part ^slicing.rules = #open

* parameter[offering].part contains
    activityDefinition 1..1 and
    healthcareService 1..1 and
    practitionerRole 1..1 and
    duration 0..1 and
    price 0..1 and
    bookingUrl 0..1

// ---- activityDefinition ----
* parameter[offering].part[activityDefinition].name = "activityDefinition" (exactly)
* parameter[offering].part[activityDefinition].value[x] only Reference(ActivityDefinitionPortal)

// ---- healthcareService ----
* parameter[offering].part[healthcareService].name = "healthcareService" (exactly)
* parameter[offering].part[healthcareService].value[x] only Reference(HealthcareServicePortal)

// ---- practitionerRole ----
* parameter[offering].part[practitionerRole].name = "practitionerRole" (exactly)
* parameter[offering].part[practitionerRole].value[x] only Reference(PractitionerRolePortal)

// ---- duration (free-text) ----
* parameter[offering].part[duration].name = "duration" (exactly)
* parameter[offering].part[duration].value[x] only string

// ---- price (free-text) ----
* parameter[offering].part[price].name = "price" (exactly)
* parameter[offering].part[price].value[x] only string

// ---- bookingUrl ----
* parameter[offering].part[bookingUrl].name = "bookingUrl" (exactly)
* parameter[offering].part[bookingUrl].value[x] only url
