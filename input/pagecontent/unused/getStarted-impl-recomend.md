<!--

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


--!>