# User Research — TaskFlow

## 1. Research Goals

Understand how people currently manage their daily tasks, what frustrations they face with existing tools, and what features would genuinely improve their productivity workflow.

### Research Questions

- How do users currently track their tasks and to-dos?
- What are the biggest frustrations with existing productivity apps?
- What motivates users to complete tasks on time?
- How do users prioritize tasks when multiple things compete for attention?
- What context do they need when reviewing a task?

---

## 2. Research Methods

| Method               | Participants | Duration       | Goal                                        |
|----------------------|-------------|----------------|---------------------------------------------|
| User Interviews      | 8 users     | 30 min each    | Deep qualitative insights                   |
| Online Survey        | 47 users    | 5 min          | Quantitative data on habits & pain points   |
| Competitive Analysis | 5 apps      | —              | Benchmark against Todoist, Notion, Things 3 |
| Contextual Inquiry   | 3 users     | 1 hour each    | Observe real task management in context     |

---

## 3. Survey Results (n = 47)

### Q1: What do you currently use to manage tasks?

| Tool                          | %    |
|-------------------------------|------|
| Sticky notes / paper          | 34%  |
| Phone notes app (Notes, Keep) | 28%  |
| Dedicated to-do app           | 21%  |
| Calendar only                 | 11%  |
| Nothing structured            | 6%   |

### Q2: What is your biggest frustration with task management?

| Pain Point                               | %    |
|------------------------------------------|------|
| Forgetting tasks / no reminders          | 43%  |
| No clear way to prioritize              | 31%  |
| Too many apps / context switching        | 18%  |
| Complicated setup / too many features   | 8%   |

### Q3: How often do you review/update your task list?

| Frequency       | %    |
|-----------------|------|
| Multiple times/day | 29%  |
| Once a day      | 38%  |
| A few times/week | 24%  |
| Rarely          | 9%   |

### Q4: What feature matters most to you?

| Feature                     | %    |
|-----------------------------|------|
| Due date & reminders        | 52%  |
| Priority levels             | 24%  |
| Categories / projects       | 14%  |
| Collaboration / sharing     | 10%  |

---

## 4. User Interview Insights

### Interview Themes

**Theme 1: Overwhelm from too many tools**
> "I have tasks in my email, tasks in Slack, tasks in sticky notes — I never know where to look first."  
> — Participant 4, Marketing Manager

**Theme 2: Simple is better**
> "I've tried Notion and it's too much. I just want to write a task and check it off."  
> — Participant 2, Freelance Designer

**Theme 3: Context is critical**
> "When I see a task I created a week ago, I have no idea what it means anymore."  
> — Participant 7, Software Engineer

**Theme 4: Completion feels rewarding**
> "Checking things off my list is genuinely satisfying. It keeps me going."  
> — Participant 1, Student

**Theme 5: Morning planning is a ritual**
> "I spend 10 minutes every morning deciding what to tackle. I need the app to help me do that."  
> — Participant 5, Entrepreneur

---

## 5. Competitive Analysis

| App       | Strengths                          | Weaknesses                          |
|-----------|------------------------------------|-------------------------------------|
| Todoist   | Clean UI, natural language dates   | Free tier is limited; no rich notes |
| Things 3  | Beautiful design, Areas & Projects | iOS only; no collaboration          |
| Notion    | Extremely flexible                 | Steep learning curve; slow on mobile |
| TickTick  | Built-in calendar & Pomodoro       | Interface feels cluttered           |
| Google Tasks | Simple, Gmail integration      | Too basic; no priority or subtasks  |

### Opportunity Gap
A focused, **mobile-first** task manager that:
- Gets out of the user's way (fast to capture tasks)
- Gives a clear "what to do today" view
- Rewards completion with satisfying micro-interactions
- Doesn't require complex setup

---

## 6. Key Findings

### Problem Statement
> Busy individuals struggle to stay on top of their tasks because existing tools are either too complex to set up quickly or too basic to provide meaningful structure — leading to missed deadlines, decision fatigue, and a sense of being overwhelmed.

### User Needs (Prioritized)

1. **Quick capture** — Add a task in under 5 seconds
2. **Daily focus view** — See only today's most important tasks
3. **Due date reminders** — Never forget a commitment
4. **Priority signaling** — Know what matters most at a glance
5. **Progress satisfaction** — Feel rewarded when tasks are done
6. **Categories/projects** — Group related work together

### Assumptions to Test in Prototyping

- Users prefer a bottom navigation bar over a hamburger menu
- A "Today" view is more useful than an "All Tasks" default view
- Swipe-to-complete is more satisfying than a checkbox tap
- Color-coded priority (Red/Orange/Blue/Grey) is intuitive without a legend
