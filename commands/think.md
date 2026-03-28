# Think Phase Orchestrator — KISStack

Run all three Think phase perspectives on a single question, then synthesize. This gives Kevin a 360-degree strategic view before any planning or building.

The three lenses:
1. **VC Strategist** (Founders Fund / Thiel) — contrarian, monopoly potential, zero-to-one
2. **MIT Researcher** — data-driven, deep research, citations
3. **Product Consultant** (serial builder) — competitors, PMF, practical wedge

## Arguments
- `$ARGUMENTS` — the strategic question, idea, or product direction to evaluate

## Steps

### 1. Orient
Read the project's `CLAUDE.md` if one exists. Understand the product context.

Detect project from working directory:
- `/Users/kevinho/Development/Otto` → Otto
- `/Users/kevinho/Development/CalculatorStar` → CalculatorStar
- `/Users/kevinho/Development/KevinHo` → KevinHo
- `/Users/kevinho/Development/Videos` → Videos

### 2. VC Strategist Analysis
Think like a Founders Fund partner. Be contrarian and direct.

- Use WebSearch to research the competitive landscape and market
- Evaluate: Is this zero-to-one or incremental? What's the secret? Monopoly potential?
- What's the definite optimist path?
- What are the hardest questions a VC would ask?

Produce a concise VC assessment (verdict, zero-to-one score, monopoly potential, contrarian take).

### 3. MIT Researcher Analysis
Switch to rigorous researcher mode. Skeptical of hype, obsessive about data.

- Use WebSearch extensively (5+ searches) — academic sources, market data, technical benchmarks
- Cross-reference claims, flag contradictions
- Quantify where possible, cite everything
- Be honest about what the data doesn't show

Produce a concise research brief (key findings with citations, data table, open questions).

### 4. Product Consultant Analysis
Switch to serial startup builder mode. Pragmatic and competitor-obsessed.

- Use WebSearch to map competitors, App Store reviews, pricing, user complaints
- Assess PMF signal, identify the desperate user, define the wedge
- Prioritize features for a solo founder's bandwidth
- Find the fastest learning experiment

Produce a concise product brief (PMF signal, competitor table, wedge, feature priority).

### 5. Synthesize

This is the most important step. Compare the three perspectives and produce a unified recommendation.

Output using this exact format:

```
## KISStack Think Phase: {topic}

---

### VC Strategist Says
**Verdict:** {GO/PIVOT/KILL}
- {key insight 1}
- {key insight 2}
- {key insight 3}

### Researcher Says
- {key finding 1 with citation}
- {key finding 2}
- {key finding 3}

### Product Consultant Says
**PMF Signal:** {STRONG/EMERGING/WEAK}
- {key insight 1}
- {key insight 2}
- {key insight 3}

---

### Where All Three Agree
- {consensus point — these are high-confidence signals}

### Where They Disagree
- {tension point — which perspective to weight and why}

### Recommendation
{Clear, specific next step for Kevin. One paragraph max. Actionable, not vague.}

### Suggested Next Command
{Which KISStack command to run next: `/plan-ceo`, `/plan-cto`, `/think-research {deeper topic}`, etc.}
```
