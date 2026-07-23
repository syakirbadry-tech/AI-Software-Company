# Architecture Evolution Rule

Architecture should evolve incrementally. Never redesign stable components unless there is a measurable business benefit.

## Core Principles

### 1. Prefer Extension Over Redesign

When a component needs to improve:

- **First:** Can we extend the existing component?
- **Second:** Can we add a new module that works alongside it?
- **Last:** Does it really need a complete redesign?

**Example:**
- ❌ "Let's rewrite the database layer to use TypeORM instead of direct SQL"
- ✅ "Let's add a query builder abstraction on top of our existing SQL layer"

---

### 2. Avoid Parallel Implementations

Do not introduce competing solutions for the same problem.

- ❌ Build two different API patterns in the same codebase
- ❌ Support both old and new authentication systems simultaneously (without deprecation plan)
- ❌ Maintain multiple data validation approaches
- ✅ Migrate gradually from old to new with clear deprecation path

---

### 3. Measure Before Redesigning

If you believe the existing architecture is insufficient, answer these questions:

**Why is the existing architecture insufficient?**
- What specific problem does it fail to solve?
- What measurable impact is it having? (slow performance, bugs, maintenance burden)
- Have you confirmed it's actually the architecture, not an implementation detail?

**What are the expected benefits?**
- How much faster will it be? (with numbers)
- How many fewer bugs? (estimate)
- How much easier to maintain? (concrete examples)
- How much faster can we develop features? (estimate)

**What are the risks?**
- What could break during migration?
- How long will the migration take?
- What if we're wrong about the benefits?
- Are there opportunity costs? (what work gets delayed?)

**What's the migration strategy?**
- Can we migrate incrementally?
- Do we need to run both systems in parallel?
- How do we verify correctness during migration?
- How do we roll back if something goes wrong?

---

## When Redesign IS Justified

### Security

A stable component should be redesigned if:
- There's a security vulnerability that can't be fixed incrementally
- The architecture fundamentally can't support required security controls

### Maintenance Burden

A redesign makes sense if:
- The component causes frequent bugs and the root cause is architectural
- Maintenance costs have become a significant team burden (measure this)
- Each new feature requires hacks around the architecture

### Business Blocker

A redesign is necessary if:
- A planned revenue-generating feature is technically impossible with current architecture
- The component is preventing the business from scaling to required levels

---

## The Approval Process for Architectural Changes

If you propose a significant redesign, provide:

```
## Proposed Redesign: [Component Name]

**Current Architecture Issue:**
- [Specific problem with measurement]

**Proposed Solution:**
- [Description of new architecture]

**Expected Benefits:**
- [Quantified benefits if possible]

**Risks:**
- [What could go wrong]
- [Migration challenges]

**Migration Strategy:**
- [Step-by-step plan]
- [Rollback procedure]

**Timeline:**
- [Estimated effort]
- [Impact on feature delivery]

**Recommendation:**
- [Your assessment of risk vs. benefit]
```

**Wait for approval before proceeding.**

---

## The Slippery Slope to Avoid

Over time, architectures drift without anyone noticing:

1. First change: "Let's add this new pattern alongside the old one temporarily"
2. Second change: "We've evolved; let's update how we do things"
3. Third change: "Actually, let's support both approaches"
4. Year later: "Why do we have 4 different ways to do the same thing?"

**This rule prevents that.**

Every architectural evolution should be:
- Intentional
- Justified by business need
- Approved explicitly
- Executed with a clear strategy

---

## Example: Good vs. Bad Evolution

### ❌ Bad Evolution (Drift)

| Change | Reasoning | Status |
|---|---|---|
| Add direct SQL queries | "Quick to implement" | Deployed |
| Add query builder | "Better for complex queries" | Deployed alongside |
| Add ORM | "Want to modernize" | Deployed alongside |
| Add GraphQL layer | "Explore new approach" | Partially deployed |
| **Result:** 4 ways to access data; inconsistent; hard to maintain | | Chaos |

### ✅ Good Evolution (Intentional)

| Change | Reasoning | Status |
|---|---|---|
| Start with direct SQL | "Simple; meets current needs" | Deployed |
| Identify validation gap | "Many queries have ad-hoc validation" | Planned |
| Extract validation into reusable service | "Reduces duplication" | Deployed |
| Later: Extract query builder | "Reduces SQL duplication; clear ROI" | Approved & planned |
| Gradually migrate queries to builder | "Incremental; can test each migration" | In progress |
| Deprecate raw SQL | "All queries migrated; can remove complexity" | Future |
| **Result:** Clean evolution; each step justified; maintainable | | Success |

---

## One Rule to Live By

**If you're not sure whether a redesign is justified, it probably isn't.**

The bar for architectural change should be high, but not impossibly high.

Use this rule to prevent architecture from becoming a solved problem that never evolves, AND to prevent it from constantly thrashing.
