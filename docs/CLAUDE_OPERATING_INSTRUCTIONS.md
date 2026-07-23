# Claude Operating Instructions for AI Software Company Platform

This is the permanent instruction set you should use when working with Claude on any feature or improvement to this platform.

## Save This as Context

Add this to:
1. Your repository README
2. Your development wiki
3. Every Claude session as a preamble

Or, better yet: Reference these instructions at the start of each Claude session:

```
Before we start any work, read:
- docs/PROJECT_CONSTITUTION.md
- docs/DECISION_FRAMEWORK.md
- docs/ARCHITECTURE.md
- docs/DATABASE.md (if data changes)

Then follow the operating instructions in docs/CLAUDE_OPERATING_INSTRUCTIONS.md
```

---

## Part 1: Before Every Implementation

### Step 1: Read the Constitution
Read these documents to understand the project's context:
- **PROJECT_CONSTITUTION.md** — Why this platform exists
- **ENGINEERING_PRINCIPLES.md** — How we build
- **DECISION_FRAMEWORK.md** — How decisions are made

### Step 2: Analyze the Request
Ask yourself:
- What is being asked?
- Does it align with the platform vision?
- Is there an existing pattern I should follow?
- What architecture documents apply?

### Step 3: Explain Your Reasoning
Before writing any code, provide:

```
## Analysis

### Current State
- [What exists today]

### Proposed Change
- [What you're recommending]

### Why This Approach
- [Your reasoning]

### Affected Files
- [List of files that will change]

### Database Changes (if any)
- [Schema modifications]

### API Changes (if any)
- [New endpoints or changes]

### Frontend Changes (if any)
- [UI/UX updates]

### Risks
- [What could go wrong]

### Trade-offs
- [Simplicity vs. Flexibility]
- [Current needs vs. Future extensibility]

### Improvement Classification
- **Required** / **Recommended** / **Optional** / **Future Enhancement**

### Next Steps
- Waiting for approval? → List what you need
- Ready to implement? → Confirm before I start coding
```

### Step 4: Wait for Approval
Do not proceed to coding until you receive:
- ✅ Approval of the approach
- ✅ Clarification on any trade-offs
- ✅ Answers to risk questions (if any)

---

## Part 2: Decision Making

### Use the Decision Hierarchy

When you have multiple solution options, prioritize:

1. **Simplicity** — Easiest to understand
2. **Maintainability** — Easiest to modify
3. **Reusability** — Can others use this?
4. **Consistency** — Does this match existing patterns?
5. **Extensibility** — Can we extend this later?
6. **Performance** — Only if measured problem
7. **Scalability** — Only if real need

**If simple solution works, recommend it.** Don't suggest over-engineered alternatives unless there's a measured business need.

### Classify All Recommendations

Every suggestion must have a classification:

🔴 **Required** — Blocks work / security / critical bug
- Provide this only when truly necessary
- Get explicit approval to prioritize

🟠 **Recommended** — Improves quality / enables features
- Schedule in roadmap
- Can wait for appropriate sprint

🟡 **Optional** — Nice-to-have / polish
- Can be picked up when capacity exists
- Lower priority

🔵 **Future Enhancement** — Speculative / depends on business decisions
- Document for reference
- Don't start unless approved
- Avoid proposing unless there's clear business value

### Example Classification

❌ **Bad:** "We should add unit tests, update the UI design, build an Event Bus, improve the login flow, and prepare for multi-tenancy."

✅ **Good:**
- 🔴 **Required:** Login flow is broken (fix immediately)
- 🟠 **Recommended:** Add unit tests for auth module (improves quality)
- 🟡 **Optional:** Update UI design (polish; can wait)
- 🔵 **Future Enhancement:** Prepare for multi-tenancy (hypothetical)

---

## Part 3: Architectural Decisions

### The Architecture Evolution Rule

Architecture evolves incrementally. Don't redesign stable components unless justified.

### When to Suggest a Redesign

Only if you can answer these questions:

**Why is the current architecture insufficient?**
- What specific problem does it fail to solve?
- What measurable impact? (slow? bugs? hard to maintain?)

**What are the expected benefits?**
- Faster by how much?
- Fewer bugs? How many?
- Easier to maintain? How?

**What are the risks?**
- What could break?
- How long to migrate?
- Can we roll back?

**What's the migration strategy?**
- Steps to migrate incrementally?
- How to verify correctness?
- Rollback procedure?

If you can't answer these with specifics, don't recommend a redesign.

### If You Spot an Architectural Problem

Provide this analysis:

```
## Architectural Issue: [Component Name]

**Current Problem**
- [Specific issue with measurement]

**Impact**
- [Business or technical impact]

**Why It Matters**
- [When this becomes a blocker]

**Possible Solutions**
1. [Option 1]: [Pros and cons]
2. [Option 2]: [Pros and cons]
3. [Option 3]: [Pros and cons]

**Recommendation**
- [Your assessment]

**Timeline**
- [Can this wait? Or urgent?]
```

Wait for input before proposing implementation.

---

## Part 4: Code Implementation

### When Implementing

Ensure your code:
- ✅ Follows existing patterns (consistency)
- ✅ Uses configuration (not hardcoding)
- ✅ Emits events (if relevant to platform)
- ✅ Has clear logging (for future AI automation)
- ✅ Is tested (unit tests for logic)
- ✅ Is documented (in code and docs/)

### After Implementation

Provide a summary:

```
## Implementation Complete

### What Was Built
- [Summary of changes]

### Files Modified
- [List of files]

### Files Created
- [List of new files]

### Database Changes
- [Migrations, schema updates]

### API Changes
- [New endpoints, modified endpoints]

### Testing
- [What was tested]
- [Known limitations]

### Documentation Updates
- [Docs updated]
- [Any migration guides needed]

### Known Issues
- [If any]

### Next Steps
- [What happens now]
```

---

## Part 5: When Conflicts Arise

### If Proposed Solution Conflicts with Principles

Explain the conflict clearly:

```
## Conflict: [Description]

### The Conflict
- [What's proposed]
- [Why it conflicts with principles]

### Trade-offs
- **Option A (Aligned):** [Description] — [Pros/Cons]
- **Option B (Conflicting):** [Description] — [Pros/Cons]

### Recommendation
- [Your assessment]
- [Why you recommend this]

### Next Steps
- [Waiting for your decision]
```

Do not proceed until the conflict is resolved.

### If You're Uncertain

**When in doubt, ask.**

```
I'm uncertain about this. Here are the options:

1. [Option 1] — Simpler, but [trade-off]
2. [Option 2] — More flexible, but [trade-off]

Which direction do you prefer?
```

---

## Part 6: Operating Rules

### The Golden Rules

1. **Simplicity Wins** — Don't over-engineer
2. **Current > Hypothetical** — Don't build for speculation
3. **Explain First** — Never code without approval
4. **Measure Problems** — Don't fix what isn't broken
5. **Document Decisions** — Why was this choice made?
6. **Wait for Approval** — On all significant changes

### What NOT to Do

❌ Suggest building the entire platform at once
❌ Introduce new patterns without justification
❌ Create parallel implementations of the same thing
❌ Over-engineer for hypothetical scale
❌ Build features that aren't requested
❌ Make architectural changes without approval
❌ Assume simplicity is a compromise

### What TO Do

✅ Recommend the simplest solution that works
✅ Classify every suggestion (Required/Recommended/Optional/Future)
✅ Explain trade-offs explicitly
✅ Wait for approval before major work
✅ Build platform services that multiple features will use
✅ Keep architecture simple and extensible
✅ Document why decisions were made

---

## How to Start a Session

### Session Preamble

Use this at the start of every Claude session:

```markdown
# Platform Context

This project is an AI-powered software platform following a specific engineering constitution.

Before we start, please:

1. Read these documents from the repository:
   - docs/PROJECT_CONSTITUTION.md
   - docs/ENGINEERING_PRINCIPLES.md
   - docs/DECISION_FRAMEWORK.md
   - docs/ARCHITECTURE.md

2. Understand the decision hierarchy:
   - Simplicity > Maintainability > Reusability > Consistency > Extensibility > Performance > Scalability

3. Classify all recommendations as:
   - 🔴 Required (must do)
   - 🟠 Recommended (should do)
   - 🟡 Optional (nice-to-have)
   - 🔵 Future Enhancement (speculative)

4. For significant work:
   - Analyze the current state
   - Explain your reasoning
   - List affected files
   - Describe data/API/UI changes
   - Identify risks
   - Wait for approval before coding

5. Reference these documents in every major decision.

Now, what would you like to work on?
```

---

## Summary

This operating model prevents:
- ❌ Over-engineering
- ❌ Governance creep
- ❌ Analysis paralysis
- ❌ Architecture drift
- ❌ Unclassified recommendations

This operating model enables:
- ✅ Clear decision making
- ✅ Intentional evolution
- ✅ Faster feature delivery
- ✅ Maintainable code
- ✅ Reusable platform services

**Stop refining governance. Start shipping features. The architecture will evolve naturally.**
