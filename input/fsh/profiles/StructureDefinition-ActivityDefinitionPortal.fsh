Profile: ActivityDefinitionPortal
Parent: ActivityDefinition
Id: activity-definition-portal
Title: "ActivityDefinitionPortal"
Description: """
<p><b>ActivityDefinition</b> represents what can be offered and booked as a service.</p>

<p>It answers the question: <i>“What service is the patient booking?”</i></p>

<ul>
  <li>Defines the <b>type of service</b> (e.g., examination, consultation, treatment).</li>
  <li>Contains a <b>booking activity code</b> that uniquely identifies the service concept.</li>
  <li>Provides stable metadata such as title and description for presentation and search.</li>
</ul>

<p><b>Booking and interoperability principle:</b></p>

<ul>
  <li>Booking is performed using the <b>activity code</b>, not the resource id.</li>
  <li>This follows the approach used in IHE Scheduling profiles.</li>
  <li>The code represents a <b>shared service concept</b> that can be reused across installations and systems.</li>
</ul>

<p><b>Important:</b> The resource <code>id</code> is a technical identifier local to a FHIR server. It MUST NOT be used as a booking key.</p>

<p>ActivityDefinitionPortal describes the service concept only. It does <b>not</b> define:</p>
<ul>
  <li>which locations offer the service</li>
  <li>which practitioners perform it</li>
  <li>context-specific price or duration</li>
  <li>availability, schedules, or bookable time slots</li>
</ul>

<p>Those context-specific details are provided through <b>Offer</b> and related context resources.</p>


<p><b>Current name in Backoffice:</b> Service</p>
"""
