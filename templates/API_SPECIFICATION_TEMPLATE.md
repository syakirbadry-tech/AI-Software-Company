# API Specification: {Endpoint or Resource Name}

## Endpoint

```
{METHOD} /api/v1/{path}
```

## Description

What this endpoint does, in one or two sentences.

## Authentication

Required? What role/permission?

## Request

### Path Parameters

| Name | Type | Required | Description |
|---|---|---|---|

### Query Parameters

| Name | Type | Required | Description |
|---|---|---|---|

### Body

```json
{}
```

## Response

### Success (200/201)

```json
{
  "success": true,
  "data": {}
}
```

### Errors

| Status | `error.code` | When |
|---|---|---|

## Notes

Anything non-obvious: rate limits, idempotency, side effects. See [docs/API_STANDARDS.md](../docs/API_STANDARDS.md) for conventions this should follow.
