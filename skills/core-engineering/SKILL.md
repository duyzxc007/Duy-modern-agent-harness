---
name: core-engineering
description: Master software engineering hub combining Karpathy guidelines, TDD workflows, 6-dimension verification, security reviews, architecture onboarding, and agentic task decomposition. Use when planning, implementing, refactoring, testing, or auditing code across all languages and frameworks.
license: MIT
---

# Master Core Engineering Hub

Unified standard for software engineering excellence, combining empirical discipline, rigorous testing, and surgical execution.

## 1. Golden Rules (Karpathy Principles)
1. **Think Before Coding**: State assumptions explicitly. Surface trade-offs. Push back on overcomplication.
2. **Simplicity First**: Minimum code that solves the problem. No speculative features or single-use abstractions.
3. **Surgical Changes**: Touch only what you must. Match existing style. Clean up only your own orphans.
4. **Goal-Driven Execution**: Define verifiable criteria before touching code. Loop until proven.

## 2. Workflows & Runbooks
Detailed runbooks are progressively disclosed in `workflows/`:
- `workflows/karpathy.md` — In-depth guidelines to reduce common LLM coding pitfalls.
- `workflows/tdd.md` — Test-Driven Development (Red -> Green -> Refactor) with 80%+ coverage target.
- `workflows/verification.md` — 6-Phase Quality Gate: Build, Typecheck, Lint, Tests, Security scan, Diff review.
- `workflows/security.md` — OWASP checklist, input sanitization, RBAC, secret hygiene, and token validation.
- `workflows/onboarding.md` — Rapid codebase analysis, architecture topology, convention extraction.
- `workflows/decomposition.md` — Multi-step agentic decomposition, eval-first design, model routing.

## 3. Fast Reference Triggers
- **New Feature / Complex Bug**: Read `workflows/tdd.md`. Write failing test first.
- **Before Committing / Pull Request**: Read `workflows/verification.md`. Run all 6 verification checks.
- **Auth / Token / External Endpoint**: Read `workflows/security.md`. Never leak credentials.
- **New Project / Unfamiliar Repo**: Read `workflows/onboarding.md`. Map entry points before coding.
