Profile: SchedulePortal
Parent: Schedule        
Id: schedule-portal
Title: "SchedulePortal"
Description: """
<p><b>SchedulePortal</b> represents when a practitioner is planned to work during a given time period.</p>

<p>It answers the question: <i>“Who is working in the coming weeks, and who can potentially be shown as bookable?”</i></p>

<ul>
  <li>Provides <b>time-based context</b> for practitioners.</li>
  <li>Is used to filter which offers may proceed to availability checks.</li>
  <li>Supports planning and staffing views.</li>
</ul>

<p><b>Relationship to Offer:</b></p>
<ul>
  <li><b>Offer</b> defines what can be presented and selected (what/where/who).</li>
  <li><b>SchedulePortal</b> indicates when a practitioner is planned to work.</li>
  <li>A practitioner may have an <b>Offer without a SchedulePortal</b>.</li>
</ul>

<p><b>Important:</b> A practitioner without SchedulePortal may still be included in offers for presentation and marketing purposes, but must be treated as <b>not currently bookable</b>.</p>
<p><b>SchedulePortal is not availability:</b></p>
<ul>
  <li>SchedulePortal does <b>not</b> represent bookable time slots.</li>
  <li>SchedulePortal does <b>not</b> guarantee that a booking can be made.</li>
  <li>Actual bookability requires downstream <b>Slot/availability</b> checks.</li>
</ul>

<p><b>Design principle:</b> Offer determines eligibility. Schedule determines potential availability. Slot determines actual bookability.</p>
"""
