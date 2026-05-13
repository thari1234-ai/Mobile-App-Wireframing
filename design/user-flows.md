# User Flows — TaskFlow

Documented user flows for the 5 core journeys in the TaskFlow app.  
Each flow uses a text-based flowchart notation and screen reference numbers.

---

## Screen Inventory

| Screen # | Screen Name          | Description                               |
|----------|----------------------|-------------------------------------------|
| S-01     | Splash               | App logo, brief animation                 |
| S-02     | Onboarding 1         | Value prop: "Your tasks, simplified"      |
| S-03     | Onboarding 2         | Value prop: "Capture in seconds"          |
| S-04     | Onboarding 3         | Value prop: "Focus on what matters"       |
| S-05     | Sign Up              | Email / Google / Apple sign-up            |
| S-06     | Profile Setup        | Name + notification preference           |
| S-07     | Home / Today         | Today's tasks, progress bar              |
| S-08     | Add Task (Sheet)     | Bottom sheet: task name, priority, date  |
| S-09     | Task Detail          | Full task view with notes, options       |
| S-10     | Categories           | List of all categories/projects          |
| S-11     | Category Detail      | Tasks filtered by selected category      |
| S-12     | Search               | Search across all tasks                  |
| S-13     | Profile & Settings   | User info, preferences, notifications    |
| S-14     | Completion State     | Animated "All done!" empty state         |

---

## Flow 1 — First Launch & Onboarding

**Trigger:** User opens the app for the first time  
**Goal:** Get the user to the Home screen with an account created

```
[App Installed]
      │
      ▼
   S-01 Splash (1.5s)
      │
      ▼
   S-02 Onboarding 1 ──[Swipe/Next]──► S-03 Onboarding 2
                                              │
                                        [Swipe/Next]
                                              │
                                              ▼
                                        S-04 Onboarding 3
                                              │
                              ┌───────────────┴───────────────┐
                         [Get Started]                    [Skip]
                              │                               │
                              ▼                               │
                          S-05 Sign Up                        │
                              │                               │
                   ┌──────────┴──────────┐                    │
             [Google/Apple]       [Email+Password]            │
                   │                     │                    │
                   └──────────┬──────────┘                    │
                              │                               │
                              ▼                               │
                         S-06 Profile Setup ◄─────────────────┘
                              │
                         [Finish Setup]
                              │
                              ▼
                        S-07 Home/Today ← (New user, empty state with CTA)
```

**Decision Points:**
- Skip onboarding → jumps directly to S-06 Profile Setup (still needs account)
- Sign up error → inline validation, stays on S-05
- Profile setup is optional — "Skip for now" allowed

---

## Flow 2 — Create a New Task

**Trigger:** User taps the "+" FAB button on Home  
**Goal:** Task saved and visible in the Today list

```
   S-07 Home/Today
      │
   [Tap + FAB]
      │
      ▼
   S-08 Add Task Sheet (slides up from bottom)
      │
      ├── [Type task name] ────────────────────── (required)
      │
      ├── [Select Priority] ──── High / Medium / Low / None
      │
      ├── [Select Due Date] ──── Calendar picker ──► [Confirm date]
      │
      ├── [Select Category] ──── Dropdown of user categories
      │
      └── [Add Note] ──── Optional text field (expandable)
            │
      ┌─────┴──────┐
  [Cancel]      [Save Task]
      │               │
      │               ▼
      │        Task saved to database
      │               │
      │               ▼
      └──────► S-07 Home/Today (task appears in list, with brief success animation)
```

**Edge Cases:**
- Empty task name → "Save" button disabled; inline validation on tap
- Due date in the past → warning banner, still allowed to save
- No category → task goes to "Inbox" default category

---

## Flow 3 — Complete a Task

**Trigger:** User sees a task on Home and marks it done  
**Goal:** Task removed from active list, completion feedback shown

```
   S-07 Home/Today
      │
      ├── Option A: [Swipe task right → "Complete" revealed]
      │               │
      └── Option B: [Tap checkbox on task card]
                      │
                      ▼
             Completion micro-animation
             (checkmark draws in, task fades/strikes through)
                      │
                      ▼
              Task moves to "Completed" section (collapsed)
                      │
                 [Last task completed?]
                      │
              ┌───────┴───────┐
             YES              NO
              │               │
              ▼               ▼
          S-14               Stay on S-07
      "All Done!" 🎉         (updated list)
      empty state
              │
         [Add more tasks?]
              │
           [Tap +]
              │
              ▼
          S-08 Add Task Sheet
```

**Undo behavior:**
- Snackbar appears: "Task completed. Undo" (5 second window)
- Tapping Undo restores task to active list with all data intact

---

## Flow 4 — View & Edit Task Detail

**Trigger:** User taps on a task card (not the checkbox)  
**Goal:** User views full task info, optionally edits it

```
   S-07 Home / S-11 Category Detail
      │
   [Tap task card body]
      │
      ▼
   S-09 Task Detail
      │
      ├── View: Title, Priority badge, Due date, Category, Notes
      │
      ├── [Tap Edit (pencil icon)]
      │         │
      │         ▼
      │    Inline editing enabled
      │    (same fields as Add Task Sheet, pre-populated)
      │         │
      │    [Tap Save] ──► changes persist, back to S-09 (updated)
      │
      ├── [Mark Complete] ──► completion flow (Flow 3)
      │
      ├── [Delete task]
      │         │
      │         ▼
      │    Confirmation dialog: "Delete this task? This can't be undone."
      │         │
      │    ┌────┴────┐
      │  [Cancel]  [Delete]
      │    │           │
      │    │           ▼
      │    │    Task deleted
      │    │           │
      │    └───────────▼
      │           S-07 Home/Today (task gone)
      │
      └── [Back arrow] ──► previous screen
```

---

## Flow 5 — Browse by Category

**Trigger:** User taps "Categories" in bottom navigation  
**Goal:** User finds and acts on a task within a specific project

```
   [Bottom Nav: Categories icon]
      │
      ▼
   S-10 Categories List
      │  Shows: Category name, task count, color dot
      │
   [Tap a category]
      │
      ▼
   S-11 Category Detail
      │  Shows: All tasks in this category, sorted by due date
      │
      ├── [Tap task card] ──► S-09 Task Detail (Flow 4)
      │
      ├── [Tap + in top right] ──► S-08 Add Task (category pre-filled)
      │
      └── [Long-press category header]
               │
               ▼
          Context menu: Rename Category | Delete Category | Change Color
```

---

## Flow Summary Table

| Flow | Entry Point  | Steps | Exit Point        | Happy Path Length |
|------|--------------|-------|-------------------|-------------------|
| 1    | App install  | 5–7   | Home (Today)      | 6 screens         |
| 2    | Home FAB (+) | 3–5   | Home (task added) | 4 interactions    |
| 3    | Task card    | 1–2   | Home (updated)    | 2 interactions    |
| 4    | Task card    | 2–4   | Task Detail       | 3 interactions    |
| 5    | Bottom nav   | 2–3   | Category tasks    | 3 interactions    |

---

## Navigation Architecture

```
                    ┌─────────────────────────────────┐
                    │         Bottom Navigation        │
                    │                                 │
              ┌─────┴────┬──────────────┬────────────┴─────┐
              │          │              │                   │
           Home       Categories     Search             Profile
          (S-07)       (S-10)        (S-12)             (S-13)
              │          │
              │          └──► Category Detail (S-11)
              │
              ├──► Add Task Sheet (S-08)  [FAB, modal]
              │
              └──► Task Detail (S-09)    [push navigation]
```
