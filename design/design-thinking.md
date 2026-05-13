# Design Thinking Process — TaskFlow

A full walkthrough of the design thinking methodology applied to TaskFlow's mobile wireframing exercise.

---

## Overview

Design Thinking is a human-centered problem-solving framework with five iterative phases:

```
  ┌───────────┐   ┌──────────┐   ┌──────────┐   ┌───────────┐   ┌────────┐
  │ EMPATHIZE │──►│  DEFINE  │──►│  IDEATE  │──►│ PROTOTYPE │──►│  TEST  │
  └───────────┘   └──────────┘   └──────────┘   └───────────┘   └────────┘
  Understand        Frame the      Generate        Build           Validate
  the user          problem        solutions       solutions       with users
```

The process is non-linear — insights from testing loop back to reframe and re-ideate.

---

## Phase 1 — Empathize

**Goal:** Understand the real people who will use the product, not the assumed ones.

### Activities Conducted
- **8 user interviews** (30 min each, semi-structured)
- **47-participant online survey**
- **3 contextual inquiry sessions** (watching users manage tasks in their natural context)
- **Competitive product analysis** (Todoist, Things 3, Notion, TickTick, Google Tasks)

### Key Empathy Insights

| What users SAY          | What users DO               | What users FEEL           |
|-------------------------|-----------------------------|---------------------------|
| "I need fewer features" | Download feature-rich apps  | Overwhelmed by complexity |
| "I'll set it up later"  | Never properly configure it | Guilty about unfinished tasks |
| "I check my tasks daily"| Actually checks inconsistently| Anxious when tasks pile up |
| "I just need reminders" | Ignores most notifications  | Frustrated by irrelevant alerts |

### Empathy Map — Primary Persona (Alex)

```
                          ┌─────────────────────────────┐
                          │           ALEX               │
              ┌───────────┤      Marketing Manager       ├───────────┐
              │  THINKS   │         Age 32, Austin        │   FEELS   │
              │           └─────────────────────────────┘           │
  "I should be   │                                          │ Anxious about
  more organized"│                                          │ dropping tasks
  "There must be │                                          │ Relieved when
  a better way"  │                                          │ list is clear
              │               ┌───────────┐               │
              │               │   ALEX    │               │
              └───────────────┤ (center)  ├───────────────┘
              ┌───────────────┤           ├───────────────┐
              │   SAYS        └───────────┘    DOES       │
              │                                           │
  "I've tried  │                              Uses sticky  │
  everything"  │                              notes + 3    │
  "Simple is   │                              different    │
  better"      │                              apps at once │
              └───────────────────────────────────────────┘
```

---

## Phase 2 — Define

**Goal:** Synthesize research into a clear, human-centered problem statement.

### Affinity Mapping

Interview notes were organized into clusters:

| Cluster            | Core Insight                                          |
|--------------------|-------------------------------------------------------|
| Tool fragmentation | Users scatter tasks across 3+ apps/tools              |
| Capture friction   | Any more than 2 steps to add a task breaks the habit  |
| Decision fatigue   | Not knowing "what to do first" kills productivity     |
| Completion reward  | Finishing tasks is intrinsically motivating           |
| Context loss       | Old tasks become meaningless without notes            |

### Problem Statement (Point of View)

> **Alex, a busy marketing manager,** needs **a frictionless way to capture, prioritize, and review daily tasks** because **today's tools are either too complex to sustain or too basic to be useful**, leading to missed deadlines and a constant feeling of being behind.

### "How Might We" Questions

Generated from the problem statement to open up ideation:

1. HMW make task capture so fast that it becomes reflexive?
2. HMW help users know exactly what to work on when they open the app?
3. HMW make task completion feel rewarding and worth celebrating?
4. HMW prevent task context from being lost over time?
5. HMW let users organize tasks without requiring upfront configuration?
6. HMW surface the right tasks at the right time without overwhelming alerts?

---

## Phase 3 — Ideate

**Goal:** Generate a wide range of potential solutions before converging on the best.

### Brainstorm Session (Solo + Group)

**Rules applied:** No criticism, quantity over quality, build on ideas, wild ideas welcome.

#### Feature Ideas Generated (40+ total, sample below)

| Idea                              | HMW it addresses     | Feasibility |
|-----------------------------------|----------------------|-------------|
| "Quick capture" widget on home screen | #1 capture     | High        |
| Today view — shows only today's tasks | #2 focus       | High        |
| Swipe-to-complete gesture         | #3 reward            | High        |
| Confetti animation on completion  | #3 reward            | Medium      |
| Mandatory "note" field per task   | #4 context           | Low (friction) |
| Auto-suggest category from task text | #5 organization  | Medium      |
| "Inbox" default category for fast capture | #5        | High        |
| AI smart priority suggestion      | #2, #6               | Low (v2)    |
| Daily digest notification (1/day) | #6 alerts            | High        |
| Streak counter for consistent completion | #3          | High        |
| Voice capture via microphone      | #1 capture           | Medium      |
| Recurring tasks (daily/weekly)    | #4 context           | Medium      |

### Convergence — Feature Prioritization

Used **Impact vs. Effort matrix** to prioritize for MVP:

```
                HIGH IMPACT
                    │
    ┌───────────────┼───────────────────┐
    │  Quick wins   │   Major features  │
    │               │                   │
    │ • Today view  │ • Priority levels  │
    │ • Fast capture│ • Categories       │
LOW │ • Swipe done  │ • Due dates        │ HIGH
EFF ├───────────────┼───────────────────┤ EFF
ORT │ • Confetti    │ • AI suggestions  │ ORT
    │ • Day streak  │ • Voice capture   │
    │               │ • Recurring tasks │
    │  Fill-ins     │   Hard tasks      │
    └───────────────┼───────────────────┘
                    │
                LOW IMPACT
```

**MVP Scope (Quick Wins + Major Features):**
- Today / daily focus view
- Fast task capture (bottom sheet, 3 taps max)
- Priority levels (High / Medium / Low / None)
- Categories with color coding
- Due dates + reminders
- Swipe-to-complete + checkbox
- Streak counter

---

## Phase 4 — Prototype

**Goal:** Build something tangible enough to test — not perfect, just real enough.

### Prototype Fidelity Decision

| Fidelity Level | When to use         | Time cost |
|----------------|---------------------|-----------|
| Paper sketches | Early concept validation | 1–2 hrs |
| **Low-fi (ours)** | **Flow & layout testing** | **4–8 hrs** |
| Mid-fi         | Interaction testing  | 1–2 days  |
| Hi-fi          | Visual design testing | 3–5 days |

We chose **low-fidelity** because:
- Faster to produce and iterate
- Testers focus on flow and structure, not aesthetics
- Easy to change when feedback demands it
- Clearly communicates "this is not the final design"

### Prototype Decisions Log

| Decision                           | Rationale                                              |
|------------------------------------|--------------------------------------------------------|
| Bottom navigation (not hamburger)  | Thumb-friendly; key destinations always visible        |
| Floating Action Button for "Add"   | Convention users already know; fast capture access     |
| Bottom sheet for Add Task          | Keeps user in context; avoids full-page navigation     |
| Today view as default home screen  | Answers "what do I do now?" immediately on open        |
| Priority shown as color dot        | Scannable at a glance without reading text             |
| Completed tasks collapsed at bottom | Gives sense of progress without cluttering active list |
| Indigo/purple accent color         | Placeholder — production palette TBD with brand       |

### Screens Prototyped

14 screens covering 5 core user flows (see `user-flows.md` and `wireframes/index.html`).

---

## Phase 5 — Test

**Goal:** Put the prototype in front of real users and learn what doesn't work.

### Usability Test Plan

**Participants:** 5 users matching primary persona (Alex archetype)  
**Format:** Moderated remote sessions, 30 minutes each  
**Tool:** Share screen + wireframe prototype in browser  

### Test Scenarios

| Scenario | Task Given to User                                       | Screen Flow       |
|----------|----------------------------------------------------------|-------------------|
| 1        | "You just downloaded the app for the first time. Sign up." | S-01 → S-06    |
| 2        | "Add a high-priority task due today called 'Send invoice'." | S-07 → S-08 → S-07 |
| 3        | "Find and complete the marketing report task."           | S-07 → S-09 → S-14 |
| 4        | "Find all tasks in your Work category."                  | S-10 → S-11      |
| 5        | "Find a completed task from last week."                  | S-12             |

### Usability Test Metrics

| Metric                          | Target  |
|---------------------------------|---------|
| Task completion rate            | ≥ 90%   |
| Time to add first task          | ≤ 30 sec |
| Navigation errors per session   | ≤ 2     |
| User satisfaction score (1–5)   | ≥ 4.0   |

### Expected Feedback Areas

Based on the design, we anticipate testing will reveal:

1. **Onboarding length** — 3 screens may be too long; users might skip all
2. **Priority pill selection** — users may want to see examples of High vs. Low
3. **Category in Add Task** — pre-filling "Inbox" might not be discoverable
4. **Swipe gesture** — not all users know about swipe-to-complete; need discoverability cue
5. **Bottom nav labels** — "Today" label may not clearly signal it's the home screen

### Iteration Cycle

```
Test results
     │
     ▼
Document findings
     │
     ▼
Prioritize issues (critical / major / minor)
     │
     ▼
Return to DEFINE or IDEATE for significant issues
     │
     ▼
Update prototype
     │
     ▼
Test again (1–2 more rounds)
     │
     ▼
Hand off to high-fidelity design
```

---

## Design Principles Established

These principles emerged from the research and guided every wireframe decision:

1. **Speed first** — Every core action must be completable in 3 taps or fewer
2. **Clarity over completeness** — Show less to help users focus
3. **Reward the habit** — Make completion feel satisfying at every scale
4. **Graceful defaults** — Sensible defaults so setup isn't required
5. **Context is king** — Never let a task be mysterious; notes are always surfaced

---

## Figma / Adobe XD Handoff Notes

When moving this prototype to Figma or Adobe XD:

### Component Checklist
- [ ] Design system: color tokens, typography scale, spacing grid (8px base)
- [ ] Component library: task card, bottom sheet, bottom nav, FAB, badge, pill
- [ ] Auto-layout frames for responsive behaviour (iPhone 14 primary target)
- [ ] Prototype links between all 14 frames with correct transitions
- [ ] Overlay component for bottom sheet (S-08)
- [ ] Annotation layer with UX notes per screen

### Recommended Figma Structure
```
TaskFlow/
├── 🎨 Design System
│   ├── Colors
│   ├── Typography
│   └── Spacing
├── 🧩 Components
│   ├── Task Card
│   ├── Bottom Nav
│   ├── FAB
│   └── ...
└── 📱 Wireframes
    ├── Flow 1 – Onboarding
    ├── Flow 2 – Add Task
    ├── Flow 3 – Complete Task
    ├── Flow 4 – Task Detail
    └── Flow 5 – Categories
```
