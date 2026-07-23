# Security Standards

## Authentication & Authorization

- Every endpoint that isn't explicitly public requires authentication; authorization (what an authenticated user is allowed to do) is checked at the API layer, not assumed from the UI hiding a button.
- Session tokens/credentials are never logged, never stored in plaintext, and never committed to a repository (including in example configs — use `.env.example` with placeholder values).
- Password storage uses a modern, salted hashing algorithm (e.g., bcrypt/argon2) — never plaintext or fast general-purpose hashes (MD5/SHA1/SHA256 alone).

## Data Protection

- Treat customer/member/personal data as sensitive by default across all projects (this applies directly to the OSH-C Portal and CRM). Access is scoped to what a role needs, and access to sensitive records is logged.
- All external traffic uses HTTPS/TLS; no plaintext transport for anything carrying credentials or personal data.
- Secrets (API keys, database credentials) come from environment variables or a secrets manager, never from source-controlled files.

## Input Handling

- All user input is validated and, where it's rendered back (HTML, SQL, shell), properly escaped/parameterized. Use parameterized queries or an ORM's query builder — never string-concatenated SQL.
- File uploads are validated by content, not by trusting the filename/extension, and stored outside the web root or in object storage with restricted execution permissions.

## Dependencies

- Dependencies are kept reasonably current; a known-CVE dependency with an available fix is a 🔴 Required fix per [decision-framework/IMPROVEMENT_CLASSIFICATION.md](decision-framework/IMPROVEMENT_CLASSIFICATION.md), not something to schedule for "later."

## Rate Limiting & Abuse Prevention

Public-facing endpoints (login, signup, password reset, any unauthenticated form) have rate limiting and, where relevant, bot mitigation. This is 🔴 Required before a public launch, not an afterthought.

## Incident Response

If a security issue is found in production, it is classified 🔴 Required regardless of how it was found, reported to the human owner immediately, and fixed before any other work continues on that project.

## Related

- [API_STANDARDS.md](API_STANDARDS.md) — authentication conventions at the transport layer
- [DATABASE_STANDARDS.md](DATABASE_STANDARDS.md) — data retention and sensitive-data handling
