# User Personas — TaskFlow

Three primary personas derived from user research (interviews + survey data).

---

## Persona 1 — "The Overwhelmed Professional"

```
┌─────────────────────────────────────────────────────────────────┐
│  👤  ALEX MORRISON                                              │
│  Age: 32  |  Marketing Manager  |  City: Austin, TX            │
│  Tech savvy: ●●●●○   Task load: ●●●●●                          │
└─────────────────────────────────────────────────────────────────┘
```

### Background
Alex manages a team of 5 and juggles campaign planning, client calls, and internal reporting simultaneously. Work tasks blur into personal errands constantly. Alex has tried Asana, Notion, and Trello — always goes back to sticky notes after a few weeks because setup time killed the habit.

### Goals
- Have one place that captures everything without requiring configuration
- Know exactly what needs to happen *today* each morning
- Stop dropping the ball on smaller tasks that fall between meetings

### Frustrations
- "Every app I try has too many features I'll never use"
- Notifications are either absent or overwhelming — no middle ground
- Can't quickly see which tasks are urgent vs. nice-to-have

### Behaviors
- Reviews tasks at 8 AM with coffee
- Captures tasks on phone while commuting
- Uses voice-to-text when driving

### Quote
> "I don't need another system. I need a system I'll actually stick to."

### Needs from TaskFlow
| Need                 | Priority |
|----------------------|----------|
| Fast task capture    | Critical |
| Today focus view     | Critical |
| Priority levels      | High     |
| Reminders            | High     |
| Minimal setup        | Critical |

---

## Persona 2 — "The Structured Student"

```
┌─────────────────────────────────────────────────────────────────┐
│  👤  PRIYA SHARMA                                               │
│  Age: 21  |  Computer Science Student  |  City: Boston, MA     │
│  Tech savvy: ●●●●●   Task load: ●●●○○                          │
└─────────────────────────────────────────────────────────────────┘
```

### Background
Priya is in her junior year, balancing coursework, a part-time internship, and extracurricular clubs. She uses her phone for everything and has tried multiple to-do apps but keeps gravitating back to iOS Reminders because it's built-in and syncs with her laptop. She's open to switching if something genuinely fits her student workflow.

### Goals
- Separate school tasks from personal tasks cleanly
- Track assignment deadlines without digging through course syllabi
- Feel accomplished at the end of a study session

### Frustrations
- Can't see assignment due dates relative to each other
- Existing apps don't let her see tasks by class/project
- Completion animations feel underwhelming — not motivating

### Behaviors
- Plans the week every Sunday evening
- Checks tasks before each class to see what's due
- Appreciates visual satisfaction (streaks, completion rings)

### Quote
> "I want to see my week at a glance and feel good when I finish something."

### Needs from TaskFlow
| Need                    | Priority |
|-------------------------|----------|
| Categories / projects   | Critical |
| Due dates               | Critical |
| Weekly view             | High     |
| Completion feedback     | High     |
| Cross-device sync       | Medium   |

---

## Persona 3 — "The Independent Freelancer"

```
┌─────────────────────────────────────────────────────────────────┐
│  👤  MARCUS OKAFOR                                              │
│  Age: 38  |  UX Freelancer  |  City: Remote (Lagos / London)   │
│  Tech savvy: ●●●●●   Task load: ●●●●○                          │
└─────────────────────────────────────────────────────────────────┘
```

### Background
Marcus runs his own UX consultancy, working with 3–4 clients at a time across different time zones. He uses Notion for project documentation but needs a lighter tool for daily task tracking because Notion's mobile experience slows him down. He bills by the hour and needs to know what client work to prioritize at any moment.

### Goals
- Instantly know what client to work on and what task to do first
- Keep client work separated so nothing bleeds over
- Get through the day's tasks in a focused, distraction-free way

### Frustrations
- Notion mobile is too slow for quick captures
- Can't tag tasks by client easily in simple apps
- No good way to see how much work is assigned to each client

### Behaviors
- Task capture happens everywhere — meetings, shower, commute
- Prefers keyboard shortcuts / quick-add on desktop
- Reviews completed tasks at EOD to log billable work

### Quote
> "Speed matters. If capturing a task takes more than 3 taps, I'll just forget it."

### Needs from TaskFlow
| Need                    | Priority |
|-------------------------|----------|
| Fast capture (< 3 taps) | Critical |
| Categories by client    | Critical |
| Priority + urgency view | High     |
| Notes on tasks          | High     |
| Daily summary / EOD view | Medium  |

---

## Persona Comparison Matrix

| Feature                | Alex (Professional) | Priya (Student) | Marcus (Freelancer) |
|------------------------|:-------------------:|:---------------:|:-------------------:|
| Quick task capture     | ★★★★★              | ★★★★☆          | ★★★★★              |
| Today / daily view     | ★★★★★              | ★★★☆☆          | ★★★★☆              |
| Priority levels        | ★★★★☆              | ★★★☆☆          | ★★★★★              |
| Categories / projects  | ★★★☆☆              | ★★★★★          | ★★★★★              |
| Due dates & reminders  | ★★★★☆              | ★★★★★          | ★★★☆☆              |
| Completion feedback    | ★★★☆☆              | ★★★★★          | ★★☆☆☆              |
| Weekly view            | ★★★☆☆              | ★★★★★          | ★★★★☆              |
| Task notes             | ★★★☆☆              | ★★★☆☆          | ★★★★☆              |

---

## Primary Persona for Wireframes

**Alex Morrison** is used as the primary design target for the wireframe prototype. His needs represent the highest-overlap use case (quick capture + daily view + priority) and set the most constrained UX requirements — what works for Alex will work for Priya and Marcus with minimal adjustment.
