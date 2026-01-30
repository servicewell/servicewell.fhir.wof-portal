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
