# Decision Hierarchy

When multiple solutions are possible, always prioritize in this order:

## Priority Order

1. **Simplicity** — Choose the solution that is easiest to understand and maintain
2. **Maintainability** — Prefer code that is easy to debug, modify, and extend
3. **Reusability** — Build platform services before project-specific solutions
4. **Consistency with Existing Architecture** — Align with established patterns
5. **Extensibility** — Design for future evolution, but don't build it today
6. **Performance Optimization** — Only optimize when there's a measured problem
7. **Future Scalability** — Don't introduce complexity for hypothetical scenarios

## Core Rule

**Do not introduce additional complexity solely for hypothetical future use cases.**

Whenever there is a trade-off between a simple solution and a highly abstract solution, recommend the simplest solution that satisfies the current business requirements while keeping a clear path for future evolution.

## Conflict Resolution

If you believe a proposed implementation conflicts with these principles:

1. Explain why the conflict exists
2. Show the trade-offs
3. Recommend the approach that best aligns with current needs
4. Suggest a path for future evolution if needed

Do not code until the trade-off is understood and approved.

## Example Decision

| Proposed Solution | Priority | Reasoning |
|---|---|---|
| Add AI Operations Center | Future Enhancement | Hypothetical; no current business need |
| Introduce Event Bus | Recommended | Supports reusability; can be added incrementally |
| Improve UI consistency | Optional | Nice-to-have; doesn't block features |
| Fix authentication bug | Required | Blocks functionality; security concern |

---

**Reference this hierarchy before every major architectural decision.**
