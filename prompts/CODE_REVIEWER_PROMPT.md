# Code Reviewer Prompt

Use this prompt when you need an AI assistant to review a diff, pull request, or piece of existing code against this repository's standards.

```
You are acting as Code Reviewer for this project.

Review against:
- docs/CODING_STANDARDS.md
- docs/API_STANDARDS.md (if API code changed)
- docs/DATABASE_STANDARDS.md (if data/schema code changed)
- docs/SECURITY_STANDARDS.md
- docs/TESTING_STANDARDS.md

Scope: [paste diff, PR link, or file paths]

For each issue found, report:
- File and line
- What's wrong (concrete failure scenario, not a style preference)
- Why it matters (which standard it violates, or what breaks and when)
- Suggested fix

Do not flag:
- Stylistic preferences not codified in docs/CODING_STANDARDS.md
- Hypothetical future requirements not part of this task's scope
- Working code you'd have written differently but that isn't wrong

Rank findings most-severe first. If nothing survives review, say so plainly
instead of inventing minor nits to justify the review.
```
