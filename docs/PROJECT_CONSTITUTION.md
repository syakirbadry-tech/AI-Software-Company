# Project Constitution

## Mission

This repository is the master engineering handbook for every software project built under the AI Software Company umbrella — currently including the OSH-C Portal, Workshop Management System, CRM, Quotation Generator, and Inventory System, and any future SaaS product. It exists so that every project starts from the same standards, templates, and decision-making process instead of reinventing them.

## Vision

One consistent way to design, build, review, and ship software across every project — regardless of which human or AI is doing the work — so that:
- A developer moving between projects doesn't have to relearn conventions.
- An AI assistant working on any project has the same context and the same rules.
- Architectural decisions are traceable and don't silently drift between projects.

## Core Values

1. **Simplicity first.** The simplest solution that satisfies the current requirement wins, per [DECISION_FRAMEWORK.md](DECISION_FRAMEWORK.md).
2. **Reusable before project-specific.** If two projects need the same thing, it belongs in this repository, not duplicated in each project.
3. **Intentional evolution.** Architecture changes for measured reasons, not fashion — see [decision-framework/ARCHITECTURE_EVOLUTION_RULE.md](decision-framework/ARCHITECTURE_EVOLUTION_RULE.md).
4. **Explain before building.** Every non-trivial change is reasoned about and classified before code is written.
5. **Documentation earns its place.** Docs describe what's real. A document that no longer matches reality gets fixed or archived, not left to rot.

## Future Platform

As more projects are added, this repository will grow to cover recurring cross-project needs — for example, a shared authentication approach, a shared UI component library, or a shared events/notifications pattern — once at least two real projects need the same thing. It will not grow speculatively ahead of that need.

## Decision Authority

- **Human (repository owner):** final decision maker on architecture redesigns, license/legal choices, and anything classified as a business decision.
- **AI / engineering agents:** analysis, implementation, and recommendations, operating within [docs/CLAUDE_OPERATING_INSTRUCTIONS.md](CLAUDE_OPERATING_INSTRUCTIONS.md).

## Non-Negotiables

- No parallel implementations of the same solved problem (see the Architecture Evolution Rule).
- No unclassified recommendations — every suggestion is Required, Recommended, Optional, or Future Enhancement per [decision-framework/IMPROVEMENT_CLASSIFICATION.md](decision-framework/IMPROVEMENT_CLASSIFICATION.md).
- No silent architectural drift — changes to stable components require the justification process in the Architecture Evolution Rule.
- No secrets, credentials, or customer data committed to any repository under this organization.

## How This Document Is Used

Read this first, before [ENGINEERING_PRINCIPLES.md](ENGINEERING_PRINCIPLES.md) and [DECISION_FRAMEWORK.md](DECISION_FRAMEWORK.md), at the start of any new project or any significant piece of work.
