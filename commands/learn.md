# Post-Launch Review — Product × Analyst × Design

You are running a post-launch review for a feature that has shipped. This is the most important meeting that solo founders skip — the one where you look at what actually happened after launch, not what you hoped would happen.

This command brings together three perspectives:
1. **Product Consultant** — qualitative signals: user feedback, reviews, support tickets, social mentions
2. **Product Analyst** — quantitative signals: metrics movement, funnel changes, retention impact, cohort behavior
3. **Principal Designer** — UX signals: where users struggle, what flows break, what needs iteration

Your posture: honest, evidence-driven, forward-looking. The goal isn't to celebrate or blame — it's to answer "what did we learn, and what should we do next?"

## Arguments
- `$ARGUMENTS` — the feature or release to review. Include timeframe if relevant (e.g., "meal tracking, 2 weeks post-launch").

## Steps

### 1. Orient
Read the project's `CLAUDE.md` if one exists. Understand the product, what was shipped, and what the original goals were.

Detect project from working directory:
- `/Users/kevinho/Development/Otto` → Otto
- `/Users/kevinho/Development/CalculatorStar` → CalculatorStar
- `/Users/kevinho/Development/KevinHo` → KevinHo
- `/Users/kevinho/Development/Videos` → Videos

If a prior `/plan` or `/think` artifact exists in the conversation, reference the original goals and success criteria.

### 2. Qualitative Review (Product Consultant Lens)
Use WebSearch to find real user signals:
- App Store / Play Store reviews mentioning the feature
- Reddit, Twitter/X, Hacker News threads
- Product Hunt comments (if applicable)
- Support tickets or common complaints in forums
- Direct user feedback (ask Kevin what he's heard)

Run at least 3-5 searches. Look for patterns, not individual complaints.

Assess:
- **Sentiment**: Is the reaction positive, mixed, or negative?
- **Surprise**: What did users do that you didn't expect?
- **Language**: What words do users use to describe this? (Often reveals positioning insights)
- **Unmet needs**: What are they still asking for?

### 3. Quantitative Review (Product Analyst Lens)
Ask Kevin about available metrics, or infer from the project's analytics setup. Evaluate:

- **Adoption**: What % of users have engaged with the feature? Is it growing or flat?
- **Activation**: Are users completing the core action? Where's the drop-off?
- **Retention impact**: Has the feature improved overall retention? Compare cohorts (users who use it vs. those who don't)
- **North Star movement**: Did the North Star Metric move? By how much?
- **Counter-metrics**: Did anything get worse? (Performance, other feature usage, support volume)

If hard data isn't available, define what should be measured and how — this is still valuable output.

### 4. UX Review (Principal Designer Lens)
Evaluate the shipped experience through a design lens:

- **Task completion**: Can users accomplish the goal without confusion or friction?
- **Discoverability**: Are users finding the feature? Or is it buried?
- **Error states**: Are users hitting error states? Which ones and how often?
- **Accessibility**: Any reported a11y issues? Screen reader gaps, contrast problems, keyboard traps?
- **Visual polish**: Now that it's live, what feels unfinished or inconsistent?

Use WebSearch if relevant to find UX benchmarks or patterns from similar products.

### 5. Synthesize & Recommend

Compare the three perspectives. What do the qualitative signals, quantitative data, and UX review collectively say?

Output using this exact format:

```
## Post-Launch Review: {feature}

**Launched:** {date or timeframe}
**Overall Signal:** {STRONG / MODERATE / WEAK / CONCERNING} — {one-line summary}

---

### What Users Are Saying (Qualitative)
**Sentiment:** {Positive / Mixed / Negative}

- {Pattern 1 — with source: App Store, Reddit, etc.}
- {Pattern 2}
- {Pattern 3}

**Surprise finding:** {What you didn't expect}

**In their words:** "{Direct quote from a user that captures the sentiment}"

---

### What the Data Shows (Quantitative)
| Metric | Before | After | Change | Signal |
|--------|--------|-------|--------|--------|
| {metric} | {value} | {value} | {+/-/%} | {positive/neutral/negative} |

**Adoption rate:** {%} of users have engaged — {above/below/at} expectation
**Retention impact:** {description of cohort comparison}
**Counter-metrics:** {anything that degraded, or "none observed"}

*If data is unavailable:*
**Instrumentation gaps:** {What should be measured but isn't, and how to set it up}

---

### UX Assessment (Design)
**Usability:** {Strong / Adequate / Needs Work}

- **Works well:** {what's landing as designed}
- **Friction point:** {where users struggle — be specific}
- **Missing state:** {any unhandled state that showed up in production}
- **A11y issue:** {if any, or "none identified"}

---

### Where All Three Agree
- {Consensus insight — high confidence}

### Where They Disagree
- {Tension — e.g., users say they love it (qualitative) but adoption is low (quantitative)}

---

### Verdict
**Keep / Iterate / Rethink / Kill**

{One paragraph: what the evidence says about this feature's trajectory and what to do about it.}

### Concrete Next Steps
1. {Specific action} — `/plan-ceo {what}` or `/think-analyst {what}`
2. {Specific action}
3. {Specific action}

### What to Measure Next
- {Metric or signal to watch over the next 2-4 weeks, with target}

### Suggested Next Command
{Which KISStack command to run: `/think {deeper question}` to re-evaluate strategy, `/plan-ceo {iteration}` to scope the next version, or `/think-analyst {feature}` to define better instrumentation.}
```
