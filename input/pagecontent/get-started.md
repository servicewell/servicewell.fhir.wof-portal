This guide is written for **customers/partners** who want to integrate with the **WOF Portal ITB**, which exposes a **FHIR-based API**.

### Scope & user journey
This section describes an **example booking journey** for a consumer-facing application using the Public API. The exact user interface, data-loading strategy, and order of steps are determined by the implementer.

For example, some consumers may load clinics, treatments, and practitioners progressively as the patient makes selections, while others may preload this information using available API operations such as $get-offer-context. The API supports different implementation patterns.
<div style="display:flex; gap:2rem; align-items:flex-start;">
  <div style="flex:1; min-width:0;">
    <p><strong>1. Select clinic and/or treatment</strong><br/>The booking journey typically starts with the patient selecting a clinic, a treatment, or both. Clinics and treatments can be used as filters for each other, and the order in which they are presented is up to the implementer.</p>

    <p>A consumer may, for example:</p>
    <ul>
      <li>present clinics first and then filter available treatments,</li>
      <li>present treatments first and then filter available clinics,</li>
      <li>allow the patient to refine both selections gradually.</li>
    </ul>

    <p>The patient should be able to view enough information to make a choice, such as clinic name and address, or treatment name, duration, and description.</p>

    <p><strong>2. Optional promo or campaign code</strong><br/>If the booking flow supports campaign or promo codes, the implementer may use such a code to filter, highlight, or preselect relevant clinics or treatments.</p>

    <p>How the code is handled in the user interface is implementation-specific. For example, it may be:</p>
    <ul>
      <li>entered manually by the patient,</li>
      <li>provided through a campaign link,</li>
      <li>applied automatically by the consumer system.</li>
    </ul>

    <p>If an invalid code is used, the consumer should present an appropriate error message or fallback behavior.</p>

    <p><strong>3. Select practitioner</strong><br/>Before searching for available appointment slots, the consumer needs to have practitioner information available for the selected clinic and treatment combination. This information may already have been loaded earlier in the flow (for example through <code>$get-offers-context</code>), or it may be loaded at this stage.</p>

    <p>In the current API version, practitioner selection is required when retrieving availability through <code>$find</code>. This means that if the consumer wants to show available slots across multiple practitioners, the consumer currently needs to query availability separately for each relevant practitioner.</p>

    <p><strong>4. Select date and time</strong><br/>Available dates and time slots are retrieved based on the selected clinic, treatment, and practitioner.</p>

    <p>Because availability is currently fetched per practitioner, consumers who want to present a broader availability view across multiple practitioners need to collect the results from multiple practitioner-specific queries and present them in a suitable way.</p>

    <p>For example, a consumer may:</p>
    <ul>
      <li>show available time slots grouped by practitioner, allowing the patient to select from each practitioner's availability, or</li>
      <li>combine the returned results into a list of unique time slots and then let the patient choose among the practitioners available at that time.</li>
    </ul>

    <p>The exact presentation is implementation-specific.</p>

    <p><strong>5. Review and confirm booking</strong><br/>Before creating the booking, it is advisable to present the patient with a summary of the selected booking details, such as clinic, treatment, practitioner, and appointment time.</p>

    <p>The exact confirmation flow is implementation-specific, but may include actions such as:</p>
    <ul>
      <li>accepting terms and conditions,</li>
      <li>choosing whether to receive a confirmation message, if supported,</li>
      <li>identifying the patient using BankID or another supported authentication method.</li>
    </ul>

    <p><strong>6. Booking confirmation</strong><br/>After the booking is completed, a confirmation page is shown. If the patient selected SMS confirmation, a message is sent to the phone number registered with the clinic. From the confirmation page, the patient can continue to My bookings.</p>

    <p><strong>7. View and manage bookings</strong><br/>Viewing and managing bookings is a separate flow from the booking creation journey. A consumer may provide a view such as "My bookings", where the patient can see existing or upcoming appointments.</p>

    <p>Depending on the implementation and the clinic's rules, the patient may also be allowed to reschedule or cancel an existing booking.</p>
  </div>
   <div style="flex:1 1 0; min-width:0;">
     <a href="#itb-journey-fullscreen" title="Click to enlarge" style="display:block"> 
      <div class="itb-journey-thumb">
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
  width: 100%;
  min-height: 520px;
}
.itb-journey-thumb svg{
  display:block;
  width: 100% !important;
  height: auto !important;
  max-width: none;
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
  width: min(92vw, 1400px);
  max-width:90vw; max-height:90vh;
  overflow:auto;
  background:#fff;
  padding:1rem;
  border-radius:6px;
}
#itb-journey-fullscreen .lightbox-content svg {
  width: 100% !important;
  height: auto !important;
  max-width: none;
  display:block;
}
</style>
<div id="itb-journey-fullscreen" onclick="window.location.hash='';">
  <div class="lightbox-content" onclick="event.stopPropagation();">
    {% include itbpatientjourney.svg %}
  </div>
</div>

---

### Authentication and security

To use the Public API, the consumer must be provided with the relevant environment-specific connection and security details, such as:

- FHIR Base URL for sandbox and production
- API key for sandbox and production
- any applicable network or security constraints, such as IP allowlisting (not currently needed)

For API key provisioning and related access information, contact Service Well support.

The API supports two authorization contexts:

- **system-authenticated access**, where the consumer integration acts on its own behalf
- **patient-authenticated access**, where the consumer acts on behalf of an authenticated patient

Accordingly, API endpoints are divided into two categories:

- **system-authenticated endpoints**, which require system-level authorization
- **patient-authenticated endpoints**, which require patient authentication and patient context

System tokens and patient tokens are separate access tokens issued through different authentication flows and representing different identities:

- a **system token** represents the consumer integration
- a **patient token** represents the authenticated patient

At the same time, endpoint access is governed by granted scopes. Depending on the scopes granted during patient authentication, a patient token may also authorize operations that are otherwise available with a system token. For this reason, some endpoints may be callable with either token, provided that the required scopes are present.

Even so, the recommended token choice remains scenario-dependent:

- use a **system token** for integration-level access when no patient context is needed
- use a **patient token** when acting on behalf of an authenticated patient

System tokens may also be preferable for non-interactive backend usage, for example because they typically have a longer lifetime than patient tokens.

Each endpoint must be called with an access token that provides the required scopes and, where applicable, patient context.

#### System authentication

System authentication is used for API operations where the consumer integration accesses the API on its own behalf.

To obtain a system token, call the system token endpoint using the assigned API key:

```http
POST {{baseUrl}}/{{tenant}}/1.0/R4/auth/system-token
X-ApiKey: <API_KEY>
```

If the request is successful, the API returns a system token. This token is then used when calling system-authenticated endpoints.

Example:

```http
Authorization: Bearer <SYSTEM_ACCESS_TOKEN>
```

The system token represents the consumer integration and is intended for integration-level access where patient context is not required.

#### Patient authentication

Patient authentication is based on OpenID Connect (OIDC).

For endpoints that require patient authentication, the consumer must authenticate the patient through the configured OIDC flow and obtain a patient access token from the identity provider.

To support patient sign-in, the consumer must be configured with the required OIDC settings, including:

- OIDC issuer URL
- `client_id`
- `client_secret`, where applicable for confidential clients
- registered `redirect_uri` values, provided by the consumer and registered by Service Well
- required scopes to request during authentication.

**Available scopes:**
 - patient/Patient.read
 - patient/Appointment.read
 - patient/Appointment.write
 - patient/$book.write
 - system/Organization.read
 - system/HealthcareService.read
 - system/PractitionerRole.read
 - system/ActivityDefinition.read
 - system/$find.read
 - system/$get-offers-context.read 

**Requied scopes:**
 - openid
 - wof-profile
 - PortalAccess

---

The consumer must also understand how patient context is established after authentication. Depending on the implementation, this may be provided either:

- directly in token claims, such as a patient identifier
- through a dedicated endpoint, for example a `patient`-style endpoint

Although the same client configuration may support both system authentication and patient authentication, these flows produce different tokens for different authorization contexts.

##### Patient-authorized calls

When a patient signs in successfully through OIDC, the consumer receives a patient access token representing the authenticated patient.

This token is used when calling patient-authenticated API endpoints.

Example:

```http
Authorization: Bearer <PATIENT_ACCESS_TOKEN>
```

The patient token authorizes access to patient-specific data and operations. Depending on the scopes granted during login, it may also authorize certain operations that are otherwise available using a system token.

#### Summary

In summary:

- the **API key** is used to obtain a system token for the consumer integration
- the **system token** represents the consumer integration and is typically used for system-authenticated endpoints
- the **patient token** is obtained through OIDC login and represents the authenticated patient
- endpoint access depends on the scopes granted to the presented token
- a **patient token** can, if granted sufficient scopes, also be accepted for operations that do not require a system context

The recommended usage is therefore:

- use a **system token** for integration-level access without patient context
- use a **patient token** when acting on behalf of a signed-in patient


--- 


### FHIR interactions
<table class="grid">
  <thead>
    <tr>
      <th>OperationDefinition</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    {% include table-operationdefinitions.xhtml %}
  </tbody>
</table>

Simple (unordered)flow explanation:

* Get booking context (`$getOffersContext`)  <br>Consumer  client loads the booking context needed to drive the bookingflow. The request can be altered to include services, where it can be booked, by which practitioner and the relationship between them.

* Find available times (`$find`)  <br>The consumer client request available appointments whithin the specified search criterias and time frame options in a given time range and receives proposed appointments. In the current API version, availability is retrieved per practitioner, so practitioner information must be available before calling $find. This is aligned with the IHE "Find Potential Appointments" interaction.

* Book an appointment (`$book` create)  <br>After the patient selects a proposed time (appointment), the consumer application submits a $book request to create the booking. In this implementation, the request must always contain the full Appointment resource representing the appointment to be booked.

* Modify an appointment (`$book` modify)  <br>The same `$book` operation is also used to modify an existing appointment. In this case, the consumer application submits the full Appointment resource for the existing booking, updated with the intended changes, such as a new time or practitioner. On success, the API returns the updated appointment. This matches the IHE model where $book can be triggered to modify an already booked appointment.

* Cancel an appointment (`$book` cancel)  <br>If the patient cancels an appointment, the same $book operation is also used to cancel an existing appointment. To cancel a booking, the consumer application submits the full Appointment resource for the existing booking with the appropriate cancellation status set. On success, the API returns the cancelled appointment. In IHE Scheduling, cancellation is one of the defined trigger cases for $book, rather than a separate operation.

* Error handling  <br>If something fails in `$find` or `$book` and a request cannot be fullfilled, the API returns an `OperationOutcome` with error details.

**NOTE***
For `$book`, a successful response returns a Bundle containing a single Appointment resource and may also include an OperationOutcome with supplemental information. An unsuccessful `$book` response returns only an OperationOutcome in the response Bundle.

<div id="itb-journey-fullscreen" onclick="window.location.hash='';">
  <div class="lightbox-content" onclick="event.stopPropagation();">
  {% include scheduling-flow.svg %}
  </div>
</div>

---

### ITB Conformance resources
This section describes the contract model behind the API and how to use it when building an online booking website.

Recommended way to read and use them:

1. Start with [CapabilityStatement](./artifacts.html#behavior-capability-statements) to understand what is supported in this environment (interactions, search capabilities, and published operations).
2. Continue with [OperationDefinitions](./artifacts.html#behavior-operation-definitions) to implement operation workflows correctly, including request parameters, response shape, and error outcomes.
3. Use [profile](./artifacts.html#structures-resource-profiles) and extension artifacts as your payload rulebook for request/response validation and UI mapping.
4. Use [logical models](./artifacts.html#structures-logical-models) as semantic guidance when mapping business concepts in your frontend/backend.
5. Use [NamingSystem](./artifacts.html#terminology-naming-systems) to handle identifiers correctly (`system|value`) in search, filtering, and matching.
6. Use [examples](./artifacts.html#example-example-instances) as implementation guidance and test fixtures, not as the source of truth.

How to interpret priority:

* **Treat `CapabilityStatement` + `OperationDefinition` as runtime truth.**
* **Treat `StructureDefinition` as data truth.**
* **Treat examples as guidance.**

---

You can find the complete resource list in the [Artifacts section](./artifacts.html)

