# Documentation Structure for AI Software Company Platform

This is the recommended folder structure and content for your `docs/` directory.

## Folder Structure

```
docs/
│
├── PROJECT_CONSTITUTION.md
│   └── Mission, vision, and long-term goals
│
├── ENGINEERING_PRINCIPLES.md
│   └── Core values and how we build
│
├── DECISION_FRAMEWORK.md
│   └── How to make architectural decisions
│       • Decision Hierarchy
│       • Improvement Classification
│       • Architecture Evolution Rule
│
├── ARCHITECTURE.md
│   └── System design and component overview
│       • Platform layers
│       • Major components
│       • Technology stack
│       • Deployment model
│
├── DATABASE.md
│   └── Database schema and design principles
│       • Entity relationships
│       • Migration strategy
│       • Data retention policies
│       • Backup procedures
│
├── API_STANDARDS.md
│   └── REST API design standards
│       • URL conventions
│       • Response formats
│       • Error handling
│       • Versioning strategy
│
├── CODING_STANDARDS.md
│   └── Code quality guidelines
│       • Language-specific conventions
│       • Naming standards
│       • Testing requirements
│       • Documentation requirements
│
├── DEVELOPMENT_WORKFLOW.md
│   └── How we build features
│       • Task lifecycle
│       • Git workflow
│       • Code review process
│       • Testing strategy
│
├── AI_INTEGRATION.md
│   └── How AI assists in development
│       • AI agent roles (current vs. future)
│       • Event emission standards
│       • Logging requirements
│       • AI model selection criteria
│
├── DEPLOYMENT.md
│   └── How code reaches production
│       • Deployment pipeline
│       • Release process
│       • Rollback procedure
│       • Production monitoring
│
├── ROADMAP.md
│   └── Feature roadmap
│       • Current quarter priorities
│       • Known future work
│       • Business blockers
│
└── CHANGELOG.md
    └── Record of significant decisions
        • Major architectural changes
        • Technology updates
        • Breaking changes
        • Lessons learned
```

---

## Content Templates

### PROJECT_CONSTITUTION.md

```markdown
# Project Constitution

## Mission
[Why this platform exists]

## Vision
[Long-term goal]

## Core Values
- [Value 1]
- [Value 2]
- [Value 3]

## Future Platform
The platform will eventually support:
- [Future project 1]
- [Future project 2]

## Decision Authority
- Human: Final decision maker
- AI: Analysis, implementation, recommendations

## Non-Negotiables
- [Principle 1]
- [Principle 2]
```

---

### ENGINEERING_PRINCIPLES.md

```markdown
# Engineering Principles

## How We Build

1. Build reusable platform services before project-specific solutions
2. Prefer additive changes over rewrites
3. Configuration over hardcoding
4. Event-driven architecture where appropriate
5. Modular design
6. Human approval before production changes

## Trade-off Philosophy

When in doubt, choose simplicity over abstraction.

When there's a trade-off between:
- Simple solution vs. Highly abstract solution → Choose simple
- Current needs vs. Hypothetical future → Prioritize current
- Quick implementation vs. Perfect design → Choose appropriate for scope

## Architecture
- [Link to ARCHITECTURE.md]

## Decision Framework
- [Link to DECISION_FRAMEWORK.md]
```

---

### ARCHITECTURE.md

```markdown
# Architecture Overview

## System Layers

### Frontend
- [Technology and approach]

### Backend
- [Technology and approach]

### Database
- [Technology and approach]

## Major Components

### Platform Services (Shared)
- [Service 1]: [Purpose]
- [Service 2]: [Purpose]

### Project Services
- [Service 1]: [Purpose]
- [Service 2]: [Purpose]

## Technology Stack

| Layer | Technology |
|---|---|
| Frontend | [Tech] |
| Backend | [Tech] |
| Database | [Tech] |
| Deployment | [Tech] |
| Monitoring | [Tech] |

## Design Principles
- [Principle 1]
- [Principle 2]

## Known Limitations
- [Limitation 1]
- [When we'll address it]
```

---

### DATABASE.md

```markdown
# Database Design

## Schema Overview

### Core Entities
```
[Entity diagrams or descriptions]
```

## Design Principles
- [Principle 1]
- [Principle 2]

## Migration Strategy
- How we handle schema changes
- Versioning approach
- Backward compatibility requirements

## Performance Considerations
- [Index strategy]
- [Query patterns]

## Data Retention
- [Policy for sensitive data]
- [Backup procedures]
```

---

### API_STANDARDS.md

```markdown
# API Design Standards

## REST Conventions

### URL Structure
```
GET    /api/v1/[resource]
POST   /api/v1/[resource]
PUT    /api/v1/[resource]/{id}
DELETE /api/v1/[resource]/{id}
```

### Response Format
```json
{
  "success": true,
  "data": {},
  "error": null
}
```

### Error Handling
```json
{
  "success": false,
  "data": null,
  "error": {
    "code": "ERROR_CODE",
    "message": "Human readable message"
  }
}
```

## Versioning Strategy
- [How we manage breaking changes]

## Authentication
- [Standard approach]

## Rate Limiting
- [Approach]

## Documentation
- [How we document APIs]
```

---

## How to Use These Documents

### Permanent Instruction for Claude

Add this to your Claude context (in a README or as a standing instruction):

```markdown
# Before Every Implementation

1. Read the relevant documents from `docs/`:
   - DECISION_FRAMEWORK.md (for all decisions)
   - ARCHITECTURE.md (for structural work)
   - DATABASE.md (for data changes)
   - API_STANDARDS.md (for API changes)

2. Ensure all recommendations align with:
   - PROJECT_CONSTITUTION.md
   - ENGINEERING_PRINCIPLES.md
   - Decision Hierarchy (in DECISION_FRAMEWORK.md)

3. If there is a conflict:
   - Explain the conflict clearly
   - Show the trade-offs
   - Recommend an approach
   - Wait for approval before coding

4. After implementation:
   - Summarize what was completed
   - List modified files
   - Explain any architectural decisions
   - Update docs if needed
```

---

## Evolution Over Time

### Phase 1: Foundation (Now)
- Create PROJECT_CONSTITUTION.md
- Create ENGINEERING_PRINCIPLES.md
- Create DECISION_FRAMEWORK.md
- Create ARCHITECTURE.md
- Create DATABASE.md

### Phase 2: Standards (When Features Scale)
- Create API_STANDARDS.md
- Create CODING_STANDARDS.md
- Create DEVELOPMENT_WORKFLOW.md

### Phase 3: Operations (When Multiple Projects)
- Create AI_INTEGRATION.md
- Create DEPLOYMENT.md
- Create CHANGELOG.md

### Phase 4: Living Documentation
- Add to docs/ as needed
- Update when architecture evolves
- Use CHANGELOG.md to track decisions

---

## One Critical Rule

**Do not expand docs indefinitely.**

Once you have 8-10 core documents, stop adding new ones. Instead, update existing documents as the platform evolves.

The goal is a compact, *readable* reference set, not comprehensive documentation of everything.

If a document gets longer than 2000 words, split it.

If you have more than 15 documents, consolidate them.

**Documentation should guide decisions, not prevent shipping.**
