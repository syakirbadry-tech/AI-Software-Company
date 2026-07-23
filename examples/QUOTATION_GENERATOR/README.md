# Example: Quotation Generator

A quote/proposal generation system (line items, pricing rules, document generation, approval).

## Suggested Layout

```
quotation-generator/
├── README.md
├── docs/
│   └── ARCHITECTURE.md
├── src/
│   ├── api/                  (quote CRUD, approval endpoints)
│   ├── pricing/              (pricing/discount rule engine)
│   ├── documents/            (PDF/document generation)
│   └── db/                   (quotes, line items, pricing rules schema)
└── tests/
```

## Root Standards That Apply
- [DATABASE_STANDARDS.md](../../docs/DATABASE_STANDARDS.md) — quotes must be versioned/immutable once sent, not edited in place
- [API_STANDARDS.md](../../docs/API_STANDARDS.md)
- [TESTING_STANDARDS.md](../../docs/TESTING_STANDARDS.md) — pricing/rounding logic needs deterministic unit tests

## Notes
Once a quote is sent to a customer, treat it as immutable (create a new version rather than mutating), so historical quotes remain accurate for audit and dispute resolution.
