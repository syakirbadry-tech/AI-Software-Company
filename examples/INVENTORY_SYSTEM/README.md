# Example: Inventory System

A stock/inventory management system (items, warehouses/locations, stock movements, reorder thresholds).

## Suggested Layout

```
inventory-system/
├── README.md
├── docs/
│   └── ARCHITECTURE.md
├── src/
│   ├── api/                  (item, stock movement, reorder endpoints)
│   ├── stock/                (movement/adjustment logic, reorder rules)
│   ├── reporting/            (stock level reports)
│   └── db/                   (items, locations, movements schema)
└── tests/
```

## Root Standards That Apply
- [DATABASE_STANDARDS.md](../../docs/DATABASE_STANDARDS.md) — stock levels must be derived from an append-only movement ledger, not a mutable running total
- [API_STANDARDS.md](../../docs/API_STANDARDS.md)
- [TESTING_STANDARDS.md](../../docs/TESTING_STANDARDS.md) — concurrency scenarios (simultaneous stock deductions) need explicit coverage

## Notes
Treat stock movements as an append-only ledger (each receipt/deduction is a row); compute current stock as a sum/view rather than mutating a single quantity column, so stock discrepancies stay traceable.
