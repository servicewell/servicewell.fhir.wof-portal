
### Step-by-step
#### Step 1 — Verify API connectivity (API key)

1. Configure your client with the **sandbox BasePath URL**.
2. Call an endpoint using your API key.

A common first call is:
 
* `GET [basepath]/metadata{?_format=[mime-type]}` to see the servers CapabilityStatement

**Expected result:**

* `200 OK` returning a valid FHIR JSON response

If you receive:

* `401/403` → missing/invalid API key, or your key lacks permissions
* `404` → incorrect base URL or path

---

#### Step 2 — Discover supported FHIR capabilities 

The `GET [basepath]/metadata` response tells you:

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



---

#### Step 5 — Make your first patient-authorized FHIR call (Bearer token)

Once you have a valid access token (and, if needed, a patient id), try:

* `GET /Appointment?patient={id}`

**Expected results:**

* `200 OK` + FHIR Resource or Bundle
* `401 Unauthorized` → missing/invalid/expired token
* `403 Forbidden` → missing scopes/permissions

#### Common issues & troubleshooting

* **401 on system calls**: missing/incorrect API key header
* **403 on patient calls**: using API key where Bearer token is required, or missing scopes
* **Frontend direct calls failing**: CORS/security constraints—use a backend proxy if required
* **Wrong patient data**: incorrect claim mapping or patient context retrieval