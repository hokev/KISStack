# Plan Phase Orchestrator — KISStack

Run all three Plan phase perspectives on a single feature, then merge into one implementation plan. This gives Kevin a unified, sequenced plan that balances product, technical, and design considerations.

The three lenses:
1. **CEO/CPO** — user stories, scope boundary, prioritization
2. **CTO** — architecture, stack decisions, effort sizing
3. **Principal Designer** — component hierarchy, interactions, accessibility

## Arguments
- `$ARGUMENTS` — the feature or initiative to plan

## Steps

### 1. Orient
Read the project's `CLAUDE.md`. Understand the product, architecture, and design context.

Detect project from working directory:
- `/Users/kevinho/Development/Otto` → Otto
- `/Users/kevinho/Development/CalculatorStar` → CalculatorStar
- `/Users/kevinho/Development/KevinHo` → KevinHo
- `/Users/kevinho/Development/Videos` → Videos

### 2. CEO/CPO Planning
Think as the product leader:
- Define the outcome (what user behavior changes?)
- Write user stories grouped by MoSCoW priority
- Draw the scope boundary for v1
- Identify the core assumption being tested

Produce a concise product plan (outcome, user stories, scope boundary).

### 3. CTO Planning
Switch to technical architect mode:
- Read relevant source files to understand current state
- Evaluate 2-3 technical approaches
- Weigh effort, maintenance burden, and reversibility
- Recommend one path with implementation sequence
- List files that need to change

Produce a concise technical plan (options, recommendation, implementation steps, risks).

### 4. Principal Designer Planning
Switch to design systems thinker:
- Audit existing patterns in the codebase
- Define component hierarchy and layout
- Design all interaction states
- Specify accessibility requirements
- Note any new design tokens needed

Produce a concise design spec (components, interactions, states, a11y).

### 5. Resolve Tensions & Merge
Compare the three plans. Where they conflict, resolve:
- CEO wants feature X but CTO says it's L-effort → defer to v1.1
- Designer wants animation Y but it adds complexity → simplify
- CTO suggests approach A but it doesn't support the design → find middle ground

### 6. Deliver

Output using this exact format:

```
## KISStack Implementation Plan: {feature}

---

### Product Scope (CEO/CPO)
**Outcome:** {what success looks like}

**v1 Must Have:**
- [ ] {user story}
- [ ] {user story}

**v1 Excludes:** {what to resist}

---

### Technical Approach (CTO)
**Recommendation:** {approach name}
**Effort:** {S/M/L}

**Key Decisions:**
- {decision 1}
- {decision 2}

**New Dependencies:** {list or "None"}

---

### Design Direction (Principal Designer)
**Components:**
{ASCII hierarchy}

**Key Interactions:**
- {interaction 1}
- {interaction 2}

**Accessibility:**
- [ ] {requirement}

---

### Resolved Tensions
- {CEO wanted X, CTO flagged Y → resolution}

### Sequenced Implementation Steps
1. [ ] {step} — {role: backend/frontend/design} — {effort: S/M/L}
2. [ ] {step} — {role} — {effort}
3. [ ] {step} — {role} — {effort}

### Done Criteria
- [ ] {testable criterion}
- [ ] {criterion}
- [ ] {criterion}

### Suggested Next Command
`/build-fullstack {feature}` or `/build-frontend {feature}`
```
