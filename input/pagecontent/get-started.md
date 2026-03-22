
<br>

This guide is written for **customers/partners** who want to integrate with the **WOF Portal ITB**, which exposes a **FHIR-based API**.


<br>

<br>

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

### API Authentication/Security

* **FHIR Base URL** (sandbox + production)
* **API key** (sandbox + production)
* Any network/security constraints (e.g., IP allowlisting), if applicable
  
For API access, standard API keys apply.  
Contact servicewell support for api-keys

The API endpoints are divided into two categories:  
**system-authenticated endpoints,** which require a valid system token,  
**patient-authenticated endpoints,** which require a patient token for authentication.

---

#### System authentication

POST {% raw %}`{{baseUrl}}/{{tenant}}/1.0/R4/auth/system-token`{% endraw %} with header `X-ApiKey` and your api-key to get your system token. 

Now you're able to access the rest of the [system-authenticated endpoints](./CapabilityStatement-WOFPortalCapabilityStatement.html#client-interaction-overview)

---

#### Patient authentication
For patient login, we're using OIDC (OpenID Connect).

**OIDC patient sign-in**

* **OIDC Issuer URL** (identity provider base URL)
* `client_id` (and possibly `client_secret`, depending on client type)
* Registered/allowed `redirect_uri` values (you provide these to us)
* Required **scopes** you should request
* How **patient context** is provided (e.g., patient id in token claims vs. a “me” endpoint)


##### Patient-authorized calls (OIDC access token)

When a patient signs in via OIDC, you obtain an **access token**. Use it to call the FHIR API for patient-specific data.

Typical header:

* `Authorization: Bearer <ACCESS_TOKEN>`

> In short: **API key = your integration identity**. **OIDC token = the patient’s authorized session**.

--- 


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


### Step-by-step
#### Step 1 — Verify API connectivity (API key)

1. Configure your client with the **sandbox FHIR Base URL**.
2. Call a standard FHIR endpoint using your API key.

A common first call is:

* `GET /metadata` (FHIR CapabilityStatement)

**Expected result:**

* `200 OK` returning a valid FHIR JSON response

If you receive:

* `401/403` → missing/invalid API key, or your key lacks permissions
* `404` → incorrect base URL or path

---

#### Step 2 — Discover supported FHIR capabilities (`/metadata`)

The `GET /metadata` response tells you:

* which FHIR resources are supported (e.g., Patient, Observation, etc.)
* which interactions are supported (read/search/create/…)
* which search parameters are available
* security requirements and any relevant profiles/scopes (implementation-specific)

Treat it as the definitive “what works here” reference.

---

#### Step 3 — Implement patient sign-in (OIDC)

For web/mobile integrations, the recommended approach is:

##### Authorization Code Flow + PKCE

1. Redirect the patient to the IdP’s `authorization_endpoint`
2. Patient authenticates (e.g., Vipps)
3. Your app receives an authorization `code` on your `redirect_uri`
4. Exchange `code` for tokens at the `token_endpoint`
5. Use the **access token** to call the FHIR API for patient-authorized endpoints

You should support:

* OIDC discovery (`/.well-known/openid-configuration`)
* Token validation (JWKS signature, `iss`, `aud`, `exp`, and `nonce` where applicable)
* PKCE verification

---

#### Step 4 — Obtain patient context (patient identity / linkage)

After sign-in you must determine *which patient* the access token applies to.

This is typically done in one of two ways (follow the WOF setup you are given):

##### Option A: Patient identifier is included in token claims

You extract the patient identifier from a token claim such as:

* `patient_id` (example), or
* `sub` (if mapped to the patient identity), or
* another agreed claim

##### Option B: Retrieve the patient identifier via a “me” endpoint

You call a dedicated endpoint using the access token to obtain the linked `Patient/{id}`.

---

#### Step 5 — Make your first patient-authorized FHIR call (Bearer token)

Once you have a valid access token (and, if needed, a patient id), try:

* `GET /Patient/{id}`
* `GET /Observation?patient={id}`

**Expected results:**

* `200 OK` + FHIR Resource or Bundle
* `401 Unauthorized` → missing/invalid/expired token
* `403 Forbidden` → missing scopes/permissions

#### Common issues & troubleshooting

* **401 on system calls**: missing/incorrect API key header
* **403 on patient calls**: using API key where Bearer token is required, or missing scopes
* **Frontend direct calls failing**: CORS/security constraints—use a backend proxy if required
* **Wrong patient data**: incorrect claim mapping or patient context retrieval

---


### ITB Conformance resources

