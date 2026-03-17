# Cross-cutting Concerns

This page covers behaviours that apply across all API endpoints — error handling, pagination, rate limiting, idempotency, filtering, and sorting.

### Status codes

The API uses standard HTTP status codes. The table below summarises the most common ones:

| Code | Meaning | When returned |
|---|---|---|
| `200 OK` | Success | Read, search, update |
| `201 Created` | Resource created | Successful `POST` |
| `204 No Content` | Deleted | Successful `DELETE` |
| `400 Bad Request` | Invalid input | Malformed JSON, missing required fields |
| `401 Unauthorized` | Authentication failure | Missing or expired token |
| `403 Forbidden` | Insufficient scope | Token lacks required scope |
| `404 Not Found` | Resource does not exist | Wrong id or resource type |
| `409 Conflict` | Version conflict | Concurrent update detected |
| `422 Unprocessable Entity` | Validation failure | Resource fails profile validation |
| `429 Too Many Requests` | Rate limit exceeded | See [Rate limits](#rate-limits) |
| `500 Internal Server Error` | Server error | Unexpected failure |

### Error handling

All error responses return an [OperationOutcome](https://www.hl7.org/fhir/operationoutcome.html) resource. Example:

```json
{
  "resourceType": "OperationOutcome",
  "issue": [
    {
      "severity": "error",
      "code": "processing",
      "diagnostics": "Patient.identifier is required"
    }
  ]
}
```

**Best practice:** Inspect the `issue[].code` and `issue[].severity` fields programmatically rather than parsing `diagnostics` text.

### Pagination

Search results are returned as a FHIR `Bundle`. When more results exist than the requested page size, the bundle contains pagination links:

| Link relation | Description |
|---|---|
| `self` | The current page |
| `next` | The next page of results |
| `previous` | The previous page of results |

Use the `_count` parameter to control page size (server may cap this). Follow `next` links to retrieve subsequent pages; do not construct URLs manually.

### Rate limits

To protect service quality the API enforces rate limits per client:

| Limit | Value |
|---|---|
| Requests per minute | *Defined per agreement* |
| Burst allowance | *Defined per agreement* |

When a limit is exceeded the server responds with `429 Too Many Requests` and includes a `Retry-After` header indicating how many seconds to wait.

### Idempotency & retries

* **Conditional create** — Use `If-None-Exist` headers on `POST` to avoid duplicate resources.
* **Conditional update** — Use `If-Match` (ETag) headers on `PUT` / `PATCH` to prevent lost updates.
* **Safe retries** — `GET` requests are inherently idempotent. For write operations, always use conditional headers so that retries do not create duplicates.

Recommended retry strategy:

1. On `429` — wait for the duration specified in `Retry-After`.
2. On `5xx` — retry with exponential back-off (e.g., 1 s, 2 s, 4 s) up to a maximum number of attempts.
3. On `4xx` (except `429`) — do **not** retry; fix the request first.

### Filtering & sorting

#### Filtering

Use FHIR search parameters to filter results. Parameters can be combined with `&`:

```http
GET /fhir/Patient?identifier=12345&_lastUpdated=gt2025-01-01
```

See the [API Reference — Parameters](api-reference.html#parameters) section for the full list of supported search parameters.

#### Sorting

Use the `_sort` parameter to order results:

```http
GET /fhir/Patient?_sort=-_lastUpdated
```

Prefix with `-` for descending order. Multiple sort keys can be comma-separated: `_sort=family,-_lastUpdated`.
