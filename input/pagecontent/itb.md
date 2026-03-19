---
title: ITB - Online booking
---

ITB is Service Well’s central solution for online bookings. It integrates with all electronic health record (EHR) systems, giving you a unified patient-facing frontend and a shared back office for administration. The result is a seamless patient journey, regardless of which clinic the patient visits.

In practice, this means the clinics are experienced as one provider rather than separate units. Management can centrally control appointment availability, bookable treatments, and optimize capacity utilization. Use Service Well’s tailored interface—or let your web agency build on top of our open API.

---

<span style="font-size:1.3em;font-style:italic;">What it is</span>

<span style="font-size:1.4em;font-weight;"> Patient interface for booking</span>

* The patient can book appointments themselves via mobile/computer, as well as reschedule/cancel.
* 'Patient portal' with “My bookings” (upcoming/previous), and the ability to manage bookings when permitted.

Typical patient journey: choose clinic → (optional campaign code) → choose treatment → choose practitioner & time → confirm by logging in. E.g with BankID/Vipps.


<span style="font-size:1.4em;font-weight;"> Backoffice (administrative interface)</span>

A shared backoffice where you control what is shown and what can be booked.
In the backoffice you can, among other things:

* Manage clinics, configure clinics that should not be bookable online or optional link to external booking.
* Manage treatments (services): create, edit, archive/activate.
* Manage selectable practitioners linked to clinic in the patient view.
* Configure SMS templates and choose to send SMS on booking/rescheduling.
* Configure booking rules (e.g. age, minimum advance notice, rules for rescheduling/cancellation).
* Control price display, images/banner, and various information/text fields shown in the patient interface.

___

### Scope & user journey

<div style="display:flex; gap:2rem; align-items:flex-start;">
  <div style="flex:1; min-width:0;">
		<p><strong>1. Select clinic</strong><br/>The patient starts the booking by selecting a clinic. Clinics are shown in an overview (e.g., name, address, map), and the patient clicks the clinic they want to book with.</p>

		<p><strong>2. Optional promo code</strong><br/>If the booking is made through a campaign, the patient enters a promo code in the designated field. If the code is valid, the campaign content is activated (e.g., certain clinics/treatments become available). If the code is invalid, an error message is displayed.</p>

		<p><strong>3. Select treatment</strong><br/>After choosing a clinic, the patient sees the treatments available for online booking at that clinic, usually including the treatment name, duration, and a short description. The patient selects a treatment by clicking it.</p>

		<p><strong>4. Select practitioner and time</strong><br/>The patient chooses a practitioner (or leaves it open to see availability for all practitioners) and then views available dates and times. When the patient selects a time slot, the selection is summarized and saved by proceeding to the next step.</p>

		<p><strong>5. Confirm booking</strong><br/>The patient reviews a summary of their selections and confirms the booking by:</p>
		<ul>
			<li>accepting the terms and conditions (checkbox/link to read them),</li>
			<li>optionally choosing confirmation by SMS,</li>
			<li>clicking Book appointment and identifying themselves with BankID.</li>
		</ul>

		<p><strong>6. Booking confirmation</strong><br/>After the booking is completed, a confirmation page is shown. If the patient selected SMS confirmation, a message is sent to the phone number registered with the clinic. From the confirmation page, the patient can continue to My bookings.</p>

		<p><strong>7. My bookings</strong><br/>In the patient portal under My bookings, the patient sees an overview of upcoming (and often previous) appointments. The patient can also manage bookings (e.g., reschedule/cancel) when allowed under the clinic’s rules.</p>
	</div>
   <div style="flex:1 1 0; min-width:0;">
     <a href="#itb-journey-fullscreen" title="Click to enlarge" style="display:block"> 
      <div class="itb-journey-thumb" style="height:612px; padding-left:40px;">
				{% include itbpatientjourney.svg %}
			</div>
		</a>
	</div>
</div>

<!-- Fullscreen overlay (pure CSS lightbox) -->
<!-- får ligga här sålänge tills vi uppat templatet -->
<style>
.itb-journey-thumb {
  cursor: zoom-in;
  line-height: 0;
}
.itb-journey-thumb svg{
  display:block;
  width:auto !important;
  height:100%;     
  max-width:100%;
  max-height:100%;
}
#itb-journey-fullscreen {
	display:none;
	position:fixed; top:0; left:0; width:100vw; height:100vh;
	background:rgba(0,0,0,0.85);
	z-index:9999;
	justify-content:center; align-items:center;
	cursor:zoom-out;
}
#itb-journey-fullscreen:target {
	display:flex;
}
#itb-journey-fullscreen .lightbox-content {
	max-width:90vw; max-height:90vh;
	overflow:auto;
	background:#fff;
	padding:1rem;
	border-radius:6px;
}
#itb-journey-fullscreen .lightbox-content svg {
	width:100%;
	height:auto;
	max-width:1200px;
	display:block;
}
</style>
<div id="itb-journey-fullscreen" onclick="window.location.hash='';">
	<div class="lightbox-content" onclick="event.stopPropagation();">
		{% include itbpatientjourney.svg %}
	</div>
</div>

---

### Authentication

#### API authentication
For API access, standard API keys apply.
Contact servicewell support for api-keys
#### Patient authentication
For patient login, we're using OIDC (OpenID Connect).

### FHIR interactions

Simple flow explanation:

1. Get booking context (`$getOffersContext`)  
Scheduling client loads what can be booked, where it can be booked, and which practitioner roles are available.

2. Find available times (`$find`)  
The scheduling client asks for available appointment options in a given time range and receives proposed appointments.

3. Book an appointment (`$book` create)  
When the patient selects a time, the scheduling client sends a booking request and receives a booked appointment.

4. Modify an appointment (`$book` modify)  
If details are changed (for example time or practitioner), scheduling client sends an update for the existing appointment.

5. Cancel an appointment (`$book` cancel)  
If the patient cancels, the scheduling client sends a cancellation request and receives the cancelled appointment.

6. Error handling  
If something fails in `$find` or `$book`, the API returns an `OperationOutcome` with error details.

{% include scheduling-flow.svg %}



### ITB Conformance resources

