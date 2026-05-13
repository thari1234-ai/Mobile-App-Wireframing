# Verdant — Website UI Redesign Project

A complete UI redesign exercise for **Verdant**, a fictional organic food delivery service, demonstrating heuristic evaluation, style guide creation, and high-fidelity responsive mockup design.

---

## Project Overview

| Attribute        | Detail                                       |
|------------------|----------------------------------------------|
| Project Type     | Website UI Redesign                          |
| Subject Site     | Verdant — Organic Food Delivery              |
| Design Phases    | Evaluate → Mood Board → Style Guide → Mockup |
| Deliverables     | Heuristic report, style guide, hi-fi mockups |
| Responsive       | Desktop (1440px), Tablet (768px), Mobile (390px) |

---

## Folder Structure

```
ui-redesign/
├── README.md                          ← This file
├── research/
│   └── heuristic-evaluation.md        ← Nielsen's 10 heuristics analysis
├── design/
│   ├── mood-board.md                  ← Visual direction & inspiration
│   ├── style-guide.md                 ← Colors, typography, spacing, components
│   └── mockups/
│       ├── before.html                ← Original site (with annotated issues)
│       └── after.html                 ← High-fidelity redesigned site
```

---

## Problem Statement

The original Verdant website had critical usability failures:
- No clear visual hierarchy — users couldn't identify the primary CTA
- Inconsistent typography (6 different font sizes, no scale)
- Non-responsive layout breaking on mobile (43% of traffic)
- Low-contrast text failing WCAG AA accessibility standards
- Navigation buried in a hamburger menu even on desktop

---

## Redesign Goals

1. Establish clear **visual hierarchy** guiding users to conversion
2. Define a cohesive **design system** (tokens, components, spacing)
3. Achieve **WCAG AA** accessibility compliance throughout
4. Deliver a **mobile-first responsive** layout
5. Reduce homepage bounce rate target: from 68% → below 40%

---

## Key Design Decisions

| Decision                        | Rationale                                         |
|---------------------------------|---------------------------------------------------|
| Playfair Display for headings   | Communicates organic, premium, trustworthy brand  |
| Inter for body text             | Maximum legibility at small sizes on screens      |
| Forest green (#1b4332) primary  | Strong brand association with nature & freshness  |
| Warm cream (#faf7f0) background | Soft, organic feel; easier on eyes than pure white |
| Card-based product layout       | Familiar pattern; excellent mobile reflow         |
| Sticky navigation               | Keeps CTA accessible at all scroll depths         |
| Full-width hero with overlay    | Establishes brand immediately; proven conversion  |

---

## How to View Mockups

Open in any browser:

- **Before (original issues):** `design/mockups/before.html`
- **After (redesign):** `design/mockups/after.html`

The `after.html` is fully responsive — resize your browser window to see desktop, tablet, and mobile layouts.
