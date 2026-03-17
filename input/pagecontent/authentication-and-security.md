# Authentication & Security

This page describes how to authenticate with the WOF Portal API and outlines security best practices for integrators.

### Token flow

The API uses **OAuth 2.0** with the **client credentials** grant for system-to-system integrations. The high-level flow is:

1. **Request** — The client sends its credentials to the authorization server's token endpoint.
2. **Validate** — The authorization server verifies the credentials.
3. **Issue** — A short-lived access token is returned.
4. **Call** — The client includes the token in the `Authorization` header when calling the FHIR API.
5. **Refresh** — Before the token expires, request a new one.

```
┌────────┐         ┌──────────────┐         ┌────────────┐
│ Client │──(1)──▶│  Auth Server  │         │  FHIR API  │
│        │◀─(3)──│               │         │            │
│        │──(4)─────────────────────────▶  │            │
│        │◀────────────────────────────── │            │
└────────┘         └──────────────┘         └────────────┘
```

### Token lifetime

| Property | Value |
|---|---|
| Access token lifetime | 3 600 seconds (1 hour) — configurable per client |
| Refresh token | Not issued for client-credentials flows |
| Clock skew tolerance | 30 seconds |

> **Recommendation:** Cache tokens and refresh them proactively (e.g., at 80 % of lifetime) rather than waiting for a `401` response.

### Scopes & roles

Access is controlled through OAuth 2.0 scopes that map to FHIR interactions:

| Scope | Grants |
|---|---|
| `fhir.read` | Read access to FHIR resources |
| `fhir.write` | Create and update FHIR resources |
| `fhir.delete` | Delete FHIR resources |
| `fhir.*` | Full access (use with care) |

Scopes are assigned during client registration. Request only the scopes your integration actually needs (principle of least privilege).

### Security best practices

1. **Store secrets securely** — Never hard-code `client_secret` values. Use a secrets manager or environment variables.
2. **Use TLS everywhere** — All communication with the API **must** use HTTPS (TLS 1.2+).
3. **Rotate credentials** — Rotate client secrets on a regular schedule and immediately if a compromise is suspected.
4. **Limit scopes** — Request only the scopes required for the integration's function.
5. **Validate tokens server-side** — If you expose your own endpoints that accept tokens, always validate signature, issuer, audience, and expiry.
6. **Log authentication events** — Record token requests and failures for audit and incident response.
7. **Protect tokens in transit** — Never include tokens in URLs or log them in plaintext.
