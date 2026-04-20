### Getting Started - Using the WOF Portal FHIR API

This guide is written for **customers/partners** who want to integrate with the **WOF Portal**, which exposes a **FHIR-based API**.

You will use two security mechanisms:

* **API keys** for technical/system access to the API (your integration / backend)
* **OIDC (OpenID Connect)** so patients can sign in using an external identity provider (e.g., Vipps) and you can perform patient-authorized API calls

---

# 1) What you need from us

Before you start, request the following for **test/sandbox** and later **production**:

### API access

* **FHIR Base URL** (sandbox + production)
* **API key** (sandbox + production)
* Any network/security constraints (e.g., IP allowlisting), if applicable

### OIDC patient sign-in

* **OIDC Issuer URL** (identity provider base URL)
* `client_id` (and possibly `client_secret`, depending on client type)
* Registered/allowed `redirect_uri` values (you provide these to us)
* Required **scopes** you should request
* How **patient context** is provided (e.g., patient id in token claims vs. a “me” endpoint)

---

# 2) Integration overview: two types of calls you will make

## A) System-to-system calls (API key)

Use the API key for backend/service calls that establish connectivity and perform non-patient-specific operations (e.g., metadata, health checks, integration verification).

Typical header:

* `x-api-key: <YOUR_API_KEY>`

## B) Patient-authorized calls (OIDC access token)

When a patient signs in via OIDC, you obtain an **access token**. Use it to call the FHIR API for patient-specific data.

Typical header:

* `Authorization: Bearer <ACCESS_TOKEN>`

> In short: **API key = your integration identity**. **OIDC token = the patient’s authorized session**.

---

# 3) Step-by-step: get connected

## Step 1 — Verify API connectivity (API key)

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

## Step 2 — Discover supported FHIR capabilities (`/metadata`)

The `GET /metadata` response tells you:

* which FHIR resources are supported (e.g., Patient, Observation, etc.)
* which interactions are supported (read/search/create/…)
* which search parameters are available
* security requirements and any relevant profiles/scopes (implementation-specific)

Treat it as the definitive “what works here” reference.

---

## Step 3 — Implement patient sign-in (OIDC)

For web/mobile integrations, the recommended approach is:

### Authorization Code Flow + PKCE

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

## Step 4 — Obtain patient context (patient identity / linkage)

After sign-in you must determine *which patient* the access token applies to.

This is typically done in one of two ways (follow the WOF setup you are given):

### Option A: Patient identifier is included in token claims

You extract the patient identifier from a token claim such as:

* `patient_id` (example), or
* `sub` (if mapped to the patient identity), or
* another agreed claim

### Option B: Retrieve the patient identifier via a “me” endpoint

You call a dedicated endpoint using the access token to obtain the linked `Patient/{id}`.

---

## Step 5 — Make your first patient-authorized FHIR call (Bearer token)

Once you have a valid access token (and, if needed, a patient id), try:

* `GET /Patient/{id}`
* `GET /Observation?patient={id}`

**Expected results:**

* `200 OK` + FHIR Resource or Bundle
* `401 Unauthorized` → missing/invalid/expired token
* `403 Forbidden` → missing scopes/permissions

---

# 4) When to use API key vs OIDC

### Use API key for:

* backend/service calls that don’t represent a specific patient session
* connectivity checks and metadata discovery
* technical/integration-level endpoints

### Use OIDC (Bearer token) for:

* any call that accesses patient-specific data
* endpoints requiring patient authorization/session context

---

# 5) Implementation recommendations

* Keep two clients in your code:

  * **API-key client** (system context)
  * **OIDC/Bearer client** (patient session context)
* Store secrets securely:

  * API keys and any `client_secret` in a secret manager (never in source code)
* Don’t log sensitive data:

  * never log tokens or patient identifiers in plain text
* Handle token lifetimes:

  * if refresh tokens are used, implement refresh
  * otherwise, re-run OIDC login when access tokens expire
* Add resilience:

  * retries with backoff for `429` and transient `5xx`
  * timeouts and correlation IDs for tracing

---

# 6) Common issues & troubleshooting

* **401 on system calls**: missing/incorrect API key header
* **403 on patient calls**: using API key where Bearer token is required, or missing scopes
* **Frontend direct calls failing**: CORS/security constraints—use a backend proxy if required
* **Wrong patient data**: incorrect claim mapping or patient context retrieval

---

# 7) Production readiness checklist

* [ ] You can call `GET /metadata` with API key in sandbox
* [ ] OIDC login (Authorization Code + PKCE) works end-to-end
* [ ] You can call at least one patient-authorized FHIR endpoint with a Bearer token
* [ ] You handle `401/403/429` and timeouts robustly
* [ ] Secrets are stored securely and logs are scrubbed

---

If you want, I can also provide:

* a **one-page Quickstart** (first successful call in ~10 minutes)
* a **sequence diagram** for the API key flow and the OIDC patient login flow
* a **template “Integration Prerequisites” form** you can give to partners (redirect URIs, environments, contact points, etc.).
