# Components

Components are behavior contracts, not visual stickers. Create only the components the product needs, but specify each one well enough to survive different content and states.

## Component contract

Every component record must include:

1. Purpose and when to use it.
2. Anatomy and content order.
3. Semantic role or platform equivalent.
4. Variants that represent real behavior differences.
5. States.
6. Sizing and density.
7. Responsive change.
8. Keyboard or platform input behavior.
9. Accessibility requirements.
10. Motion and feedback.
11. Do and do not examples.

Do not create a variant for a color change that belongs in a token. Do not create a component abstraction for one occurrence.

## Baseline inventory

| Group | Components | Required baseline |
| --- | --- | --- |
| Actions | Button, link, icon button, segmented control | Clear hierarchy, focus, pressed, disabled, pending, destructive behavior |
| Inputs | Text field, textarea, select, checkbox, radio, switch, date/time input | Label, hint, error, value, validation, keyboard path |
| Navigation | Top bar, side navigation, bottom navigation, tabs, breadcrumbs, pagination | Current location, overflow, compact behavior, escape path |
| Surfaces | Card, panel, sheet, dialog, popover, tooltip, banner, toast | Ownership, dismissal, focus, elevation, responsive placement |
| Data | List row, table, filter, search, sort, status, progress | Empty, loading, error, long content, selection, density |
| Feedback | Skeleton, spinner, empty state, error state, success state, confirmation | Explain what happened and what to do next |
| Content | Avatar, media block, quote, article section, code/data block | Alternative text, truncation, reading order, copy behavior |
| Product patterns | Onboarding step, command menu, checkout step, settings section, activity feed | Product-specific task and recovery behavior |

## Default state matrix

| State | User-facing requirement |
| --- | --- |
| Default | Shows purpose and available action clearly |
| Hover | Adds pointer feedback without carrying meaning alone |
| Focus | Visible on every keyboard or platform focusable element |
| Pressed | Confirms the action is being activated |
| Selected | Uses more than color to show current choice |
| Disabled | Explains why action is unavailable when that is not obvious |
| Pending | Prevents duplicate actions and communicates progress |
| Success | Confirms completion and the next useful action |
| Error | Names the problem, preserves user input, and offers recovery |
| Empty | Explains the absence and gives a useful next action |
| Loading | Preserves layout where possible and describes what is loading |
| Overflow | Keeps content and actions reachable without clipping |

## High-value component defaults

### Button

- Use one primary action per region unless the task requires a paired decision.
- Use sentence-case labels that describe the result, such as `Save changes` or `Start review`.
- Keep the label stable while pending; show progress beside or within it.
- Destructive actions require clear consequence and confirmation when recovery is difficult.

### Field

- Give every field a visible label or an equivalent accessible name.
- Keep hint text separate from error text.
- Preserve the value on validation failure.
- Show required, optional, format, and privacy information before input when it matters.

### Navigation

- Show the current location.
- Do not hide the primary destination behind an unlabeled icon.
- On compact surfaces, move low-frequency actions into a predictable overflow or sheet.
- Preserve back, close, and escape paths.

### Dialog and sheet

- Use for a focused task that benefits from context retention.
- Keep the title, purpose, primary action, and close action visible.
- Trap focus only while the surface is open, return focus to the opener, and allow an explicit dismiss path.
- Use a full-screen compact presentation when a small dialog would make content unusable.

### Skeleton and empty state

- Skeletons preserve the expected layout; they do not animate indefinitely without reason.
- Empty states explain why the region is empty and what the user can do next.
- Do not replace useful empty-state guidance with decorative illustration.
