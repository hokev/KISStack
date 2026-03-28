# KISStack

**Keep It Simple Stack**: an opinionated set of Claude Code slash commands that turn your AI assistant into a structured product team. Think, Plan, Build, Ship.

---

> "The best tools don't add complexity. They remove the friction between thinking and doing."

Most AI coding setups treat every interaction the same. You get one mode: "helpful assistant." But building a product isn't one activity, it's a dozen different ones. Evaluating an idea requires a different mindset than implementing it. Designing a feature requires different expertise than reviewing the code.

**KISStack gives your AI assistant distinct roles for each phase of building.** A VC who challenges your assumptions. A researcher who finds the data. A CTO who knows your stack. A designer with high taste. A developer who ships clean code. Each role has its own methodology, priorities, and output format, so you get structured, high-quality thinking at every stage.

Built for solo founders and small teams who need to move fast without cutting corners.

---

## Why KISStack

Inspired by [GStack](https://github.com/garrytan/gstack)'s insight that structured roles produce dramatically better AI output than generic prompting. KISStack takes that idea and rebuilds it for a different audience and philosophy.

**GStack gives you a virtual engineering team. KISStack gives you a virtual advisory board + two incredible developers, in 13 markdown files with zero dependencies.**

### What's different

**Zero dependencies.** GStack requires Bun, Playwright, and a persistent Chromium daemon. KISStack is just markdown files. Copy them and go. No build step, no runtime, no binary. The simplest AI workflow system that could possibly work.

**Built for the solo founder, not the engineering org.** GStack models a full engineering organization: 28 roles, formal handoffs, telemetry, CI gates, release trains. KISStack models what a solo founder actually needs: a strategic advisory board to challenge ideas, senior leaders to plan, and two excellent developers to build. 13 commands, no ceremony.

**An advisory board, not a committee.** GStack's Think phase is YC Office Hours, a single product discovery mode. KISStack runs three competing strategic lenses: a contrarian VC who asks what important truth you've found, a researcher who finds the actual data, and a product consultant who maps competitors and finds the wedge. They're designed to disagree. The orchestrator synthesizes the tension.

**Research-first, not prompt-first.** GStack's skills are sophisticated system prompts. KISStack's Think phase commands are research agents. They run 5-8 web searches, cross-reference sources, build citation tables with dates and URLs. The VC finds who's raised money in your space. The researcher finds the market sizing data. The product consultant reads the App Store reviews. It's not thinking harder. It's actually looking things up.

**Orchestrators resolve tension, not just sequence.** GStack's `/autoplan` runs reviews sequentially and stacks outputs. KISStack's `/think` and `/plan` orchestrators explicitly produce "where they agree" and "where they disagree" sections, forcing the AI to confront conflicts between the roles and produce a unified recommendation.

**Forkable in 5 minutes.** GStack has a build system, templates, generated docs, and compiled binaries. KISStack is 13 standalone markdown files. Want to change the CTO's personality? Edit one file. Want to add a new role? Copy one and follow the pattern. No toolchain to learn first.

---

## Quick Start

**1.** Clone the repo:

```bash
git clone https://github.com/hokev/KISStack.git
```

**2.** Run the setup script:

```bash
cd KISStack && ./setup.sh
```

This copies the command files to `~/.claude/commands/` where Claude Code picks them up automatically.

**3.** Start using it:

```
/think-vc should I add meal tracking to my health app?
```

That's it. No build step, no dependencies, no runtime. Just markdown files that give Claude Code structured roles.

---

## The Workflow

KISStack follows a four-phase sprint: **Think > Plan > Build > Ship.**

Each phase has specialized roles. Use them individually or run the orchestrators (`/think`, `/plan`) to get all perspectives in one pass.

```
Think                    Plan                     Build                Ship
  |                        |                        |                    |
  |-- /think-vc            |-- /plan-ceo            |-- /build-fullstack |-- /review
  |-- /think-research      |-- /plan-cto            |-- /build-frontend  |-- /qa
  |-- /think-product       |-- /plan-design         |                    |-- /ship
  |                        |                        |
  '-- /think (all three)   '-- /plan (all three)
```

---

## Commands

### Think Phase: Before You Build, Think

The Think phase is for strategic clarity. Run it before writing any code. Three specialists challenge and research your idea from different angles.

| Command | Role | What They Do |
|---------|------|-------------|
| `/think-vc` | **Founders Fund VC** | Contrarian analysis. Evaluates zero-to-one potential, monopoly dynamics, and defensibility. Asks the hard questions a VC would ask in a partner meeting. Produces a GO / PIVOT / KILL verdict. |
| `/think-research` | **MIT Researcher** | Deep research with academic rigor. Runs 5-8 web searches, cross-references sources, builds data tables with citations. Finds what the data actually says, not what the hype claims. |
| `/think-product` | **Product Consultant** | Serial startup builder who's seen what works. Maps competitors, assesses product-market fit, identifies the wedge, and designs the fastest learning experiment. |
| `/think` | **Orchestrator** | Runs all three in sequence, then synthesizes where they agree, where they disagree, and what to do next. |

**Example:**

```
You: /think-vc should Otto expand into fitness tracking?

Claude (as VC):
## VC Assessment: Otto Fitness Tracking Expansion

**Verdict: PIVOT** - Don't build fitness tracking. Own the lab-to-action pipeline instead.

### The Secret
Everyone is building fitness trackers that collect data. Nobody is building
the bridge from clinical lab results to daily behavior change...

### Zero-to-One Score: 3/10
Fitness tracking is a crowded 1-to-N market. Fitbit, Apple Health, Whoop...
```

---

### Plan Phase: Architecture Decisions Before Code

The Plan phase turns validated ideas into implementation-ready specs. Three senior leaders review scope, architecture, and design.

| Command | Role | What They Do |
|---------|------|-------------|
| `/plan-ceo` | **CEO/CPO** | Defines outcomes, writes user stories, prioritizes with MoSCoW, draws hard scope boundaries. Asks: "What's the smallest thing we can ship that teaches us the most?" |
| `/plan-cto` | **CTO** | Evaluates 2-3 technical approaches against your actual stack. Sizes effort, maps risks, lists files to touch. Biased toward boring technology. "Use what you have before adding something new." |
| `/plan-design` | **Principal Designer** | Designs in systems, not screens. Component hierarchy, all interaction states (empty/loading/error/populated), accessibility requirements, responsive behavior. |
| `/plan` | **Orchestrator** | Runs all three, resolves tensions (CEO wants X but CTO says it's L-effort), produces a single sequenced implementation plan with checkboxes. |

**The orchestrator resolves conflicts:**

```
### Resolved Tensions
- CEO wanted real-time sync, CTO flagged M-effort with WebSocket complexity
  → Deferred to v1.1. v1 uses polling with 30s interval.
- Designer specified custom animation curve, CTO noted iOS-only constraint
  → Using spring() on iOS, CSS ease-out on web. Acceptable parity.
```

---

### Build Phase: Implementation With Standards

The Build phase is where code gets written. Two developer roles with different specializations.

| Command | Role | What They Do |
|---------|------|-------------|
| `/build-fullstack` | **Full-Stack Developer** | Senior IC who ships across the entire stack. Reads your CLAUDE.md, follows existing patterns, asks max 3 clarifying questions, then implements. No over-engineering. |
| `/build-frontend` | **Senior Frontend Dev** | Design-engineer hybrid with high taste. Pixel-perfect spacing, purposeful animation (150-300ms micro, 300-500ms layout), every state designed. Produces a visual verification checklist. |

**The frontend developer's verification checklist:**

```
## Visual Check
- [x] Layout matches spec
- [x] Responsive: tested at mobile, tablet, desktop
- [ ] Dark mode (needs review on secondary bg color)
- [x] Spacing consistent with existing 4px scale
- [x] Keyboard navigation works
- [x] VoiceOver reads in logical order
- [x] Touch targets >= 44pt
```

---

### Ship Phase: Review, Test, Deploy

Simplified for solo founders. No ceremony, no process theater. Just the checks that actually prevent production incidents.

| Command | Role | What They Do |
|---------|------|-------------|
| `/review` | **Code Reviewer** | Solo-weight review focused on what matters: will it break in prod? Security holes? Will you understand this in 3 months? Skips style nitpicks. Outputs a risk level (LOW/MEDIUM/HIGH) with specific file:line findings. |
| `/qa` | **QA Tester** | Creates structured manual test plans (happy path, edge cases, regression checks) and generates automated tests using your project's framework. No browser daemon needed. |
| `/ship` | **Release Manager** | Project-aware deploy pipeline. Runs pre-flight checks (lint, test, git status), builds, then **asks before deploying**. Never auto-deploys. Knows each project's build and deploy commands. |

---

## Philosophy

### Keep It Simple

Every command must earn its keep for a solo founder. No artifacts that exist for process rather than progress. No 14-phase methodologies when 4 steps will do. If a command doesn't save you time compared to doing it freeform, it's bloat.

### Roles, Not Modes

The insight behind KISStack: different phases of building require different thinking. A VC evaluating an idea should think differently than a CTO planning architecture. By giving Claude distinct roles with specific expertise and priorities, you get dramatically better output than "help me with this."

### Project-Aware

Every command auto-detects your project from the working directory and reads your `CLAUDE.md`. The CTO knows your stack. The designer knows your brand. The release manager knows your deploy commands. You don't repeat context.

### Research-Backed Thinking

The Think phase doesn't just theorize. It uses WebSearch to find real competitors, real market data, real academic research. The VC finds who's raised money in your space. The researcher finds the actual numbers. The product consultant reads the App Store reviews.

### Opinionated Outputs

Every command produces a structured deliverable with a consistent format. The VC gives a GO/PIVOT/KILL verdict. The CEO produces MoSCoW-prioritized user stories. The code reviewer gives a risk level. No open-ended essays. Actionable, scannable output.

---

## Example Workflow

A typical feature development using KISStack:

```
# 1. Strategic evaluation
/think should Otto add a meal tracking feature?
  → VC says PIVOT (crowded market), Researcher finds clinical nutrition
    gap, Product consultant identifies a wedge through lab-correlated
    meal logging. Recommendation: build lab-to-nutrition correlation,
    not generic meal tracking.

# 2. Detailed planning
/plan lab-correlated nutrition insights for Otto
  → CEO scopes v1 to post-lab-report meal suggestions only.
    CTO recommends extending existing Fastify API with new /nutrition
    endpoint, PostgreSQL table, no new dependencies.
    Designer specs the insight card component with all states.

# 3. Build it
/build-fullstack implement nutrition insights API endpoint
/build-frontend implement nutrition insight cards

# 4. Ship it
/review branch
/qa nutrition insights
/ship Otto
```

---

## Installation

### Requirements

- [Claude Code](https://claude.ai/code) CLI installed
- That's it. No runtime, no dependencies, no build step.

### Option A: Automated Setup

```bash
git clone https://github.com/hokev/KISStack.git
cd KISStack
./setup.sh
```

The setup script copies command files to `~/.claude/commands/`. Your existing commands (if any) are preserved.

### Option B: Manual Setup

Copy the command files directly:

```bash
cp commands/*.md ~/.claude/commands/
```

### Option C: Project-Level Install

If you want KISStack scoped to a specific project instead of global:

```bash
mkdir -p your-project/.claude/commands
cp commands/*.md your-project/.claude/commands/
```

### Customization

Every command is a standalone markdown file. Fork and customize:

- **Change the project detection map**: edit the project paths in each command to match your directory structure
- **Adjust the roles**: modify the persona descriptions to match your preferences
- **Add new commands**: follow the same format (Persona, Arguments, Steps, Output Format)
- **Remove what you don't need**: each command is independent, no shared dependencies

---

## Adapting to Your Projects

KISStack ships with project detection tuned to one developer's setup. To make it yours, update the project map in each command file:

```markdown
Detect project from working directory:
- `/path/to/your/project-a` → ProjectA
- `/path/to/your/project-b` → ProjectB
```

The `/ship` command also has a project table with build and deploy commands. Update it to match your stack:

```markdown
| Project | Build Command | Deploy Command | Production URL |
|---------|--------------|----------------|---------------|
| MyApp   | `npm run build` | `vercel --prod` | myapp.com |
```

---

## How It Compares

| | KISStack | GStack |
|---|---|---|
| **Target** | Solo founders, small teams | Engineering teams with established processes |
| **Commands** | 13 focused commands | 28 commands |
| **Dependencies** | None (just markdown files) | Bun, Playwright, compiled binaries |
| **Install** | `cp commands/*.md ~/.claude/commands/` | Clone + build + setup |
| **Think phase** | 3 competing lenses (VC, researcher, product) with real web research | YC Office Hours (single product discovery mode) |
| **Orchestration** | Synthesizes tension ("where they agree/disagree") | Sequential execution, stacked outputs |
| **Browser testing** | Structured manual test plans | Persistent Chromium daemon (~100ms commands) |
| **Philosophy** | Keep it simple. Earn your complexity. | Boil the lake. AI makes completeness cheap. |
| **Customization** | Edit a markdown file | Fork + rebuild from templates |
| **Time to fork & make yours** | 5 minutes | Understand build system first |

---

## Troubleshooting

**Commands not showing up after install?**
Restart Claude Code. It discovers commands on startup from `~/.claude/commands/`.

**Can I use this with other AI coding tools?**
The commands are Claude Code-specific (they use Claude Code's `/command` system). However, the markdown content can be adapted as system prompts for any AI assistant.

**Will this conflict with my existing commands?**
No. KISStack commands use the `think-`, `plan-`, `build-` prefixes. Unless you have commands with the same names, they'll coexist with your existing setup.

**How do I update?**
Pull the latest and re-run setup:
```bash
cd KISStack && git pull && ./setup.sh
```

**The project detection doesn't match my setup.**
Edit the project map in each command file. See [Adapting to Your Projects](#adapting-to-your-projects).

**Can I use individual commands without the full workflow?**
Yes. Every command is standalone. Use `/review` without ever touching `/think`. Use `/plan-cto` without `/plan-ceo`. Mix and match.

---

## Contributing

KISStack is opinionated by design, but contributions are welcome:

1. **New roles**: propose a new command with a clear persona, methodology, and output format
2. **Improvements**: sharpen existing commands based on real usage
3. **Adaptations**: share project detection configs for common stacks (Rails, Django, Flutter, etc.)

Open an issue first for new roles. PRs welcome for improvements.

---

## License

MIT. Free forever. Go build something.
