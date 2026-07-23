# Decision Framework

How to choose between options, classify recommendations, and decide whether an architectural change is justified. This document is the entry point; the three detailed rules it summarizes live in [decision-framework/](decision-framework/) so their content isn't duplicated here.

## 1. Decision Hierarchy — "which option is best?"

When multiple solutions are possible, prioritize in this order: **Simplicity > Maintainability > Reusability > Consistency with existing architecture > Extensibility > Performance > Scalability.**

Do not introduce complexity solely for hypothetical future use cases — recommend the simplest solution that satisfies the current requirement while keeping a clear path for future evolution.

Full detail and examples: [decision-framework/DECISION_HIERARCHY.md](decision-framework/DECISION_HIERARCHY.md)

## 2. Improvement Classification — "how urgent is this?"

Every recommendation gets exactly one label:

| Label | Meaning |
|---|---|
| 🔴 Required | Blocks functionality, security issue, data integrity risk |
| 🟠 Recommended | Improves quality or enables reuse; schedule it |
| 🟡 Optional | Nice-to-have; pick up when there's capacity |
| 🔵 Future Enhancement | Speculative or depends on a business decision not yet made |

Full detail and examples: [decision-framework/IMPROVEMENT_CLASSIFICATION.md](decision-framework/IMPROVEMENT_CLASSIFICATION.md)

## 3. Architecture Evolution Rule — "is a redesign justified?"

Stable components are extended, not redesigned, unless the current architecture has a specific, measurable problem (security gap, real maintenance burden, or a business blocker) and there's a concrete migration strategy with a rollback plan. "Let's modernize" is not a justification on its own.

Full detail and examples: [decision-framework/ARCHITECTURE_EVOLUTION_RULE.md](decision-framework/ARCHITECTURE_EVOLUTION_RULE.md)

## How These Fit Together

```
New request
  → Decision Hierarchy: what's the simplest viable option?
  → Improvement Classification: how urgent/important is it?
  → Architecture Evolution Rule: does it require changing something stable?
  → Explain reasoning (per CLAUDE_OPERATING_INSTRUCTIONS.md) → get approval → implement
```

See [GOVERNANCE_FRAMEWORK_SUMMARY.md](GOVERNANCE_FRAMEWORK_SUMMARY.md) for how this framework relates to the Constitution, Principles, and Operating Instructions as a whole.
