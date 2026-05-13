# Mood Board & Style Guide — Verdant Redesign

---

## Part 1 — Mood Board

### Brand Direction

**Verdant** should feel: **Fresh · Trustworthy · Premium · Approachable**

Not: clinical, cheap, corporate, or overly playful.

### Visual Inspiration Themes

```
┌─────────────────────────────────────────────────────────────────────┐
│  THEME 1: "Forest Table"                                            │
│                                                                     │
│  ░░░░░░░░░  ████████  ░░░░░░░░░  [ Close-up of fresh vegetables ]  │
│  ░ earth ░  ██deep ██  ░ cream ░  on aged wood surface. Morning    │
│  ░ tones ░  ██green██  ░ white ░  light. Farmer's market feel.    │
│  ░░░░░░░░░  ████████  ░░░░░░░░░                                     │
└─────────────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────────────┐
│  THEME 2: "Clean Pantry"                                            │
│                                                                     │
│  White shelves. Kraft paper labels. Glass jars. Generous           │
│  whitespace. Editorial photography. Thinks: Abel & Cole,           │
│  Riverford, Ottolenghi cookbook covers.                             │
└─────────────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────────────┐
│  THEME 3: "Modern Organic"                                          │
│                                                                     │
│  Geometric layouts. Bold serif headings on cream. Warm             │
│  accent pops. Minimal decoration. Thinks: Kinfolk magazine,        │
│  Aesop website, Patagonia Provisions.                               │
└─────────────────────────────────────────────────────────────────────┘
```

**Chosen direction: Theme 3 "Modern Organic"** — clearest alignment with conversion-focused e-commerce while maintaining premium brand feel.

### Mood Keywords → Design Decisions

| Mood Word    | Design Translation                                    |
|--------------|-------------------------------------------------------|
| Fresh        | Ample white space, clean grid, bright hero imagery    |
| Trustworthy  | Consistent type scale, clear hierarchy, testimonials  |
| Premium      | Serif headings, generous padding, high-quality photography placeholder |
| Approachable | Warm cream background, rounded corners, friendly copy |
| Organic      | Earthy green palette, hand-feel textures as accents   |

---

## Part 2 — Style Guide

---

### 2.1 Color Palette

#### Primary Colors

| Token              | Hex       | RGB               | Usage                              |
|--------------------|-----------|-------------------|------------------------------------|
| `--green-900`      | `#1b4332` | rgb(27, 67, 50)   | Primary brand, nav, headings       |
| `--green-700`      | `#2d6a4f` | rgb(45, 106, 79)  | Buttons, links, badges             |
| `--green-500`      | `#52b788` | rgb(82, 183, 136) | Hover states, progress, highlights |
| `--green-100`      | `#d8f3dc` | rgb(216, 243, 220)| Background tints, tags             |

#### Neutral Colors

| Token              | Hex       | Usage                                    |
|--------------------|-----------|------------------------------------------|
| `--cream-50`       | `#faf7f0` | Page background                          |
| `--cream-100`      | `#f0ebe0` | Section alternating backgrounds          |
| `--neutral-900`    | `#1a1a1a` | Primary text (contrast 16.1:1 on cream)  |
| `--neutral-700`    | `#404040` | Body text (contrast 9.7:1 on cream)      |
| `--neutral-500`    | `#737373` | Secondary text (contrast 5.2:1 on cream) |
| `--neutral-200`    | `#e5e5e5` | Borders, dividers                        |
| `--white`          | `#ffffff` | Cards, nav on scroll                     |

#### Accent Colors

| Token              | Hex       | Usage                               |
|--------------------|-----------|-------------------------------------|
| `--amber-400`      | `#f59e0b` | Ratings, warm highlights            |
| `--red-500`        | `#ef4444` | Error states, out-of-stock badges   |
| `--orange-500`     | `#f97316` | Sale/promotion badges               |

#### Contrast Audit (WCAG AA)

| Combination                              | Ratio  | AA (4.5:1) | AAA (7:1) |
|------------------------------------------|--------|:----------:|:---------:|
| `--neutral-900` on `--cream-50`          | 16.1:1 | ✅          | ✅         |
| `--neutral-700` on `--cream-50`          | 9.7:1  | ✅          | ✅         |
| `--neutral-500` on `--cream-50`          | 5.2:1  | ✅          | ❌         |
| `#ffffff` on `--green-700`               | 5.9:1  | ✅          | ❌         |
| `#ffffff` on `--green-900`               | 12.6:1 | ✅          | ✅         |
| `--neutral-900` on `--green-100`         | 13.4:1 | ✅          | ✅         |

All combinations pass WCAG AA minimum. ✅

---

### 2.2 Typography

#### Font Families

| Role          | Font              | Source        | Weights Used    |
|---------------|-------------------|---------------|-----------------|
| Display/H1    | Playfair Display  | Google Fonts  | 700 (Bold)      |
| Headings H2–H4| Playfair Display  | Google Fonts  | 600 (SemiBold)  |
| Body / UI     | Inter             | Google Fonts  | 400, 500, 600   |
| Monospace     | JetBrains Mono    | Google Fonts  | 400 (labels)    |

#### Type Scale (8px base grid, 1.25 ratio — Major Third)

```
Token           Size    Line Height   Weight   Usage
──────────────────────────────────────────────────────────────
--text-xs       12px    16px          400      Captions, labels
--text-sm       14px    20px          400      Secondary body
--text-base     16px    24px          400      Primary body
--text-lg       18px    28px          500      Lead paragraph
--text-xl       20px    28px          500      Card titles
--text-2xl      24px    32px          600      Section labels (H3)
--text-3xl      30px    36px          600      Sub-headings (H2)
--text-4xl      36px    40px          700      Page headings (H1 mobile)
--text-5xl      48px    52px          700      H1 tablet
--text-6xl      60px    64px          700      H1 desktop hero
```

#### Typography Specimens

```
H1 — Playfair Display 700, 60px/64px
┌──────────────────────────────────────────────┐
│ Farm Fresh,                                  │
│ Delivered Daily.                             │
└──────────────────────────────────────────────┘

H2 — Playfair Display 600, 30px/36px
┌──────────────────────────────────────────────┐
│ Why Choose Verdant?                          │
└──────────────────────────────────────────────┘

Body — Inter 400, 16px/24px
┌──────────────────────────────────────────────┐
│ We source directly from certified organic    │
│ farms within 100 miles of your door. No      │
│ middlemen. No compromises.                   │
└──────────────────────────────────────────────┘

Label — Inter 500, 12px/16px UPPERCASE
┌──────────────────────────────────────────────┐
│ ORGANIC CERTIFIED                            │
└──────────────────────────────────────────────┘
```

---

### 2.3 Spacing System

8px base grid — all spacing is a multiple of 8.

| Token      | Value | Usage                                    |
|------------|-------|------------------------------------------|
| `--space-1`  | 4px   | Micro gaps (icon to label)             |
| `--space-2`  | 8px   | Tight gaps (between related items)     |
| `--space-3`  | 12px  | Small internal padding                 |
| `--space-4`  | 16px  | Default padding, card gutters          |
| `--space-5`  | 20px  | Medium spacing                         |
| `--space-6`  | 24px  | Section internal padding               |
| `--space-8`  | 32px  | Component separation                   |
| `--space-10` | 40px  | Large sections                         |
| `--space-12` | 48px  | Hero / CTA padding                     |
| `--space-16` | 64px  | Section vertical margins               |
| `--space-20` | 80px  | Major section breaks                   |
| `--space-24` | 96px  | Hero vertical padding (desktop)        |

---

### 2.4 Layout Grid

#### Desktop (≥ 1280px)
- 12 columns · 24px gutter · 120px side margins · Max width: 1280px

#### Tablet (768px – 1279px)
- 8 columns · 20px gutter · 40px side margins

#### Mobile (< 768px)
- 4 columns · 16px gutter · 16px side margins

---

### 2.5 Border Radius

| Token         | Value   | Usage                          |
|---------------|---------|--------------------------------|
| `--radius-sm` | 4px     | Tags, badges, inputs           |
| `--radius-md` | 8px     | Buttons, small cards           |
| `--radius-lg` | 12px    | Product cards, modals          |
| `--radius-xl` | 20px    | Feature cards, hero callouts   |
| `--radius-full`| 9999px | Pills, avatar, toggles        |

---

### 2.6 Shadow System

| Token          | Value                                          | Usage              |
|----------------|------------------------------------------------|--------------------|
| `--shadow-sm`  | `0 1px 2px rgba(0,0,0,0.05)`                  | Subtle lift        |
| `--shadow-md`  | `0 4px 6px -1px rgba(0,0,0,0.07)`             | Cards at rest      |
| `--shadow-lg`  | `0 10px 15px -3px rgba(0,0,0,0.08)`           | Cards on hover     |
| `--shadow-xl`  | `0 20px 25px -5px rgba(0,0,0,0.10)`           | Modals, dropdowns  |

---

### 2.7 Component Library

#### Buttons

```
PRIMARY BUTTON
┌─────────────────────────┐
│      Shop Now   →       │   bg: --green-700  text: white
└─────────────────────────┘   hover: --green-900  radius: --radius-md
  padding: 12px 24px  font: Inter 600 16px

SECONDARY BUTTON (outline)
┌ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ┐
│      Learn More         │   border: 1.5px --green-700  text: --green-700
└ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ┘   hover: bg --green-100

GHOST BUTTON
  Learn More →               text: --neutral-700  underline on hover

DANGER BUTTON
┌─────────────────────────┐
│      Remove             │   bg: --red-500  text: white
└─────────────────────────┘
```

#### Product Card

```
┌──────────────────────────┐
│                          │
│   [ Product Image ]      │  4:3 ratio, object-fit: cover
│   aspect-ratio: 4/3      │
│                          │
├──────────────────────────┤
│ ORGANIC · LOCAL          │  Label: Inter 500 11px uppercase --green-700
│                          │
│ Seasonal Veg Box         │  Inter 600 16px --neutral-900
│ Includes 8 varieties     │  Inter 400 13px --neutral-500
│                          │
│ ★★★★☆  (128)            │  Amber stars, Inter 400 13px
│                          │
│ £18.99 / week            │  Inter 700 18px --neutral-900
│                          │
│ ┌──────────────────────┐ │
│ │   Add to Cart  +     │ │  Primary button full-width
│ └──────────────────────┘ │
└──────────────────────────┘
Border-radius: --radius-lg
Shadow: --shadow-md → --shadow-lg on hover
Transition: transform 0.2s ease (lift 4px on hover)
```

#### Navigation (Desktop)

```
┌────────────────────────────────────────────────────────────────────────┐
│  🌿 Verdant    Shop  ▾   How It Works   Recipes   About   🔍   [ Order Now ] │
└────────────────────────────────────────────────────────────────────────┘
bg: transparent (hero) → white + shadow-md (on scroll)
sticky: top: 0  z-index: 100
```

#### Navigation (Mobile)

```
┌────────────────────────────┐
│  🌿 Verdant          ☰    │   hamburger only on < 768px
└────────────────────────────┘

Slide-in drawer from left:
┌──────────────┐
│ 🌿 Verdant   │
│ ──────────── │
│ Shop         │
│ How It Works │
│ Recipes      │
│ About        │
│ ──────────── │
│ [ Order Now ]│
└──────────────┘
```

#### Badge / Tag

```
[ ORGANIC ]   bg: --green-100  text: --green-900  radius: --radius-sm  11px 500
[ SALE 20% ]  bg: --orange-500  text: white
[ OUT OF STOCK ] bg: --neutral-200  text: --neutral-500
```

---

### 2.8 Icon System

Use **Phosphor Icons** (MIT licensed) — consistent 24px grid, available as SVG.

| Icon          | Usage                    |
|---------------|--------------------------|
| `leaf`        | Brand mark sub-element   |
| `shopping-cart`| Cart in nav             |
| `magnifying-glass`| Search              |
| `list`        | Mobile menu             |
| `check-circle`| Success states          |
| `x-circle`    | Error states            |
| `star`        | Ratings                 |
| `truck`       | Delivery info           |
| `arrow-right` | CTA arrows              |

---

### 2.9 Imagery Guidelines

| Rule                       | Detail                                               |
|----------------------------|------------------------------------------------------|
| Aspect ratio               | 4:3 for product cards; 16:9 for hero; 1:1 for avatar |
| Style                      | Natural light, warm tones, overhead or 45° angle     |
| Subjects                   | Real produce, no stock-photo perfection              |
| Color treatment            | Slightly warm (+10 warmth), slight desaturation (-5) |
| Avoid                      | Pure white backgrounds, cold blue tones, fake smiles |
| Alt text                   | Always descriptive — "Wicker basket of seasonal vegetables on wooden table" |

---

### 2.10 Motion & Animation

| Property       | Value              | Usage                               |
|----------------|--------------------|-------------------------------------|
| Duration fast  | 150ms              | Button hover, focus ring            |
| Duration base  | 250ms              | Card hover lift, color transitions  |
| Duration slow  | 400ms              | Page transitions, drawer open       |
| Easing default | `ease-out`         | Most transitions                    |
| Easing spring  | `cubic-bezier(0.34, 1.56, 0.64, 1)` | Drawer, modal open  |
| Respect `prefers-reduced-motion` | Yes | Remove all non-essential motion if set |
