# Getting Started

This page walks you through everything you need to make your first successful request to the WOF Portal API.

### Base URL

All API requests are sent to the following base URL:

```
https://<environment>.servicewell.se/fhir
```

| Environment | Base URL |
|---|---|
| Production | `https://api.servicewell.se/fhir` |
| Staging | `https://api-staging.servicewell.se/fhir` |

> **Note:** Replace the examples above with the actual URLs provided during onboarding.

### Required headers

Every request **must** include the following HTTP headers:

| Header | Value | Description |
|---|---|---|
| `Authorization` | `Bearer <token>` | A valid OAuth 2.0 access token |
| `Content-Type` | `application/fhir+json` | Required for `POST` / `PUT` / `PATCH` |
| `Accept` | `application/fhir+json` | Indicates the desired response format |

### Authentication flow

Before calling the API you must obtain an access token. See [Authentication & Security](authentication-and-security.html) for the full token flow.

A minimal client-credentials flow looks like this:

```http
POST /oauth2/token HTTP/1.1
Host: auth.servicewell.se
Content-Type: application/x-www-form-urlencoded

grant_type=client_credentials
&client_id=YOUR_CLIENT_ID
&client_secret=YOUR_CLIENT_SECRET
&scope=fhir.read
```

The response contains an `access_token` you include in the `Authorization` header of subsequent requests.

### First API call

Once you have a token, try a simple read:

```http
GET /fhir/metadata HTTP/1.1
Host: api.servicewell.se
Authorization: Bearer <access_token>
Accept: application/fhir+json
```

A successful response returns the server's **CapabilityStatement** (HTTP `200 OK`).

### Common mistakes

| Mistake | Symptom | Fix |
|---|---|---|
| Missing `Authorization` header | `401 Unauthorized` | Include a valid bearer token |
| Expired token | `401 Unauthorized` | Request a new token before expiry |
| Wrong `Content-Type` | `415 Unsupported Media Type` | Use `application/fhir+json` |
| Incorrect base URL | `404 Not Found` | Verify the environment URL |
| Omitting required search parameters | `400 Bad Request` | Check the [API Reference](api-reference.html) |
