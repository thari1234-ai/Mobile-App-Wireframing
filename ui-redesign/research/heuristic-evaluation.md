# Heuristic Evaluation — Verdant Website (Original)

Evaluated against **Nielsen's 10 Usability Heuristics**.  
Severity scale: 0 = Not a problem · 1 = Cosmetic · 2 = Minor · 3 = Major · 4 = Catastrophic

---

## Evaluation Summary

| Heuristic                              | Severity | Issues Found |
|----------------------------------------|:--------:|:------------:|
| 1. Visibility of System Status         |    2     |      2       |
| 2. Match Between System & Real World   |    1     |      1       |
| 3. User Control & Freedom              |    3     |      3       |
| 4. Consistency & Standards             |    3     |      4       |
| 5. Error Prevention                    |    2     |      2       |
| 6. Recognition Rather Than Recall      |    3     |      2       |
| 7. Flexibility & Efficiency of Use     |    1     |      1       |
| 8. Aesthetic & Minimalist Design       |    4     |      5       |
| 9. Help Users Recognize & Recover Errors|   2     |      2       |
| 10. Help & Documentation               |    1     |      1       |
| **Overall**                            | **3.0**  |   **23**     |

---

## Detailed Findings

---

### Heuristic 1 — Visibility of System Status
*The system should always keep users informed about what is going on.*

**Severity: 2 — Minor**

| ID    | Issue                                                                                      | Location          | Recommendation                                |
|-------|--------------------------------------------------------------------------------------------|-------------------|-----------------------------------------------|
| H1-01 | No loading indicator when adding items to cart — button appears unresponsive for 2–3 sec   | Product cards     | Add spinner + disabled state on button click  |
| H1-02 | Newsletter signup form gives no success feedback — form just clears silently               | Footer            | Show inline "Thanks! Check your inbox" message |

---

### Heuristic 2 — Match Between System & Real World
*The system should speak the users' language.*

**Severity: 1 — Cosmetic**

| ID    | Issue                                                                                       | Location      | Recommendation                           |
|-------|---------------------------------------------------------------------------------------------|---------------|------------------------------------------|
| H2-01 | CTA button labelled "Proceed to Acquisition" instead of plain "Order Now" or "Shop Now"     | Hero section  | Replace with "Shop Now" — clear, familiar |

---

### Heuristic 3 — User Control & Freedom
*Users often choose functions by mistake and need a clearly marked "emergency exit".*

**Severity: 3 — Major**

| ID    | Issue                                                                                        | Location       | Recommendation                              |
|-------|----------------------------------------------------------------------------------------------|----------------|---------------------------------------------|
| H3-01 | No "Back to top" button — users must scroll manually on long pages                           | All pages      | Add sticky back-to-top after 300px scroll   |
| H3-02 | Removing item from cart requires 3 clicks (edit → quantity → delete confirm)                 | Cart           | Add single ✕ icon per cart row              |
| H3-03 | Breadcrumbs absent on product category pages — no way to navigate back to parent category    | Category pages | Add breadcrumb trail below nav              |

---

### Heuristic 4 — Consistency & Standards
*Users should not have to wonder whether different words, situations, or actions mean the same thing.*

**Severity: 3 — Major**

| ID    | Issue                                                                                          | Location           | Recommendation                                  |
|-------|------------------------------------------------------------------------------------------------|--------------------|-------------------------------------------------|
| H4-01 | 6 different font sizes used with no typographic scale — headings range from 14px to 48px randomly | Throughout      | Define and enforce an 8-step type scale         |
| H4-02 | Primary button has 3 different colors across pages (green, orange, dark gray)                   | Multiple pages     | Standardize to one primary button token         |
| H4-03 | "Add to Cart" and "Add to Basket" used interchangeably                                          | Product cards/detail| Standardize to "Add to Cart" throughout        |
| H4-04 | Desktop nav shows 7 items; mobile nav shows a different set of 5 items                         | Navigation         | Keep identical items, only change layout        |

---

### Heuristic 5 — Error Prevention
*Even better than good error messages is a careful design which prevents a problem from occurring.*

**Severity: 2 — Minor**

| ID    | Issue                                                                                            | Location       | Recommendation                                   |
|-------|--------------------------------------------------------------------------------------------------|----------------|--------------------------------------------------|
| H5-01 | Quantity input field accepts negative numbers and non-integers without validation                 | Cart, PDP      | Restrict to positive integers with min=1 attr    |
| H5-02 | Postcode field in delivery form accepts any text — invalid postcodes only caught at final submit  | Checkout       | Add real-time postcode format validation          |

---

### Heuristic 6 — Recognition Rather Than Recall
*Minimize the user's memory load. Objects, actions, and options should be visible.*

**Severity: 3 — Major**

| ID    | Issue                                                                                             | Location        | Recommendation                                       |
|-------|---------------------------------------------------------------------------------------------------|-----------------|------------------------------------------------------|
| H6-01 | Hamburger menu used on desktop — all navigation is hidden by default for 100% of desktop users    | Desktop nav     | Expose full nav bar on desktop (≥ 1024px)            |
| H6-02 | Previously viewed products not surfaced anywhere — users must re-navigate to find them            | Homepage/Browse | Add "Recently viewed" horizontal scroll section      |

---

### Heuristic 7 — Flexibility & Efficiency of Use
*Accelerators allow expert users to perform tasks faster.*

**Severity: 1 — Cosmetic**

| ID    | Issue                                                                                              | Location   | Recommendation                                |
|-------|-----------------------------------------------------------------------------------------------------|------------|-----------------------------------------------|
| H7-01 | No keyboard shortcut or quick-search — users must click search icon, wait for expand, then type     | Global     | Auto-focus search field on icon click; add `/` shortcut |

---

### Heuristic 8 — Aesthetic & Minimalist Design
*Dialogues should not contain irrelevant or rarely needed information.*

**Severity: 4 — Catastrophic** ← Highest priority for redesign

| ID    | Issue                                                                                              | Location         | Recommendation                                   |
|-------|-----------------------------------------------------------------------------------------------------|------------------|--------------------------------------------------|
| H8-01 | Hero section has 4 competing CTAs at equal visual weight — users don't know where to click first    | Homepage hero    | Establish 1 primary CTA + 1 secondary max        |
| H8-02 | Background image + pattern overlay + gradient + text + badge all layered in hero = unreadable        | Homepage hero    | Single high-quality image with one dark overlay  |
| H8-03 | Footer contains 11 navigation columns with 60+ links                                                | Footer           | Reduce to 4 columns, 5 links each max            |
| H8-04 | Low contrast body text (#999 on #fff = 2.8:1 ratio) fails WCAG AA (requires 4.5:1)                 | Throughout       | Use #595959 minimum on white backgrounds         |
| H8-05 | Product cards have inconsistent image aspect ratios (3:2, 1:1, 16:9 mixed)                         | Product grid     | Enforce 4:3 aspect-ratio with object-fit: cover  |

---

### Heuristic 9 — Help Users Recognize, Diagnose & Recover from Errors
*Error messages should be expressed in plain language, precisely indicate the problem, and constructively suggest a solution.*

**Severity: 2 — Minor**

| ID    | Issue                                                                                              | Location    | Recommendation                                    |
|-------|-----------------------------------------------------------------------------------------------------|-------------|---------------------------------------------------|
| H9-01 | Out-of-stock products only revealed after "Add to Cart" click, not on the product card              | Product grid | Show "Out of Stock" badge prominently on card     |
| H9-02 | 404 page shows only "Page not found" with no links, no search, no suggestions                       | 404 page    | Add search bar + "Popular products" on 404        |

---

### Heuristic 10 — Help & Documentation
*Even though it is better if the system can be used without documentation, help should be easy to search.*

**Severity: 1 — Cosmetic**

| ID    | Issue                                                                                              | Location    | Recommendation                                    |
|-------|-----------------------------------------------------------------------------------------------------|-------------|---------------------------------------------------|
| H10-01| FAQ is buried 4 clicks deep (Footer → About → Support → FAQ)                                       | Site-wide   | Add FAQ link directly to footer nav + help icon in nav |

---

## Priority Fix List for Redesign

Ordered by Severity × User Impact:

| Priority | ID     | Issue (short)                        | Effort  |
|----------|--------|--------------------------------------|---------|
| P0       | H8-04  | Text contrast fails WCAG AA          | Low     |
| P0       | H6-01  | Hamburger on desktop hides all nav   | Low     |
| P0       | H8-01  | 4 competing CTAs in hero             | Low     |
| P1       | H4-01  | No typographic scale                 | Medium  |
| P1       | H4-02  | Inconsistent button colors           | Low     |
| P1       | H8-02  | Unreadable hero layering             | Medium  |
| P1       | H8-05  | Mixed image aspect ratios            | Low     |
| P2       | H3-01  | No back-to-top                       | Low     |
| P2       | H4-03  | Cart/Basket inconsistency            | Low     |
| P2       | H9-01  | Out-of-stock not visible on cards    | Low     |
| P3       | H3-02  | 3-click cart removal                 | Medium  |
| P3       | H8-03  | 11-column footer                     | Low     |

---

## Accessibility Audit (WCAG 2.1)

| Element                    | Current Contrast | Required | Pass? |
|----------------------------|-----------------|----------|-------|
| Body text (#999 / #fff)    | 2.8:1           | 4.5:1    | ❌ Fail |
| Headings (#333 / #fff)     | 8.6:1           | 3:1      | ✅ Pass |
| CTA button (white / green) | 3.9:1           | 4.5:1    | ❌ Fail |
| Footer links (#aaa / #222) | 5.7:1           | 4.5:1    | ✅ Pass |
| Nav links (#555 / #fff)    | 5.1:1           | 4.5:1    | ✅ Pass |

**2 of 5 tested combinations fail WCAG AA.** Fixed in redesign.
