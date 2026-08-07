# Layout

Layout is the visible expression of task priority. Start with content hierarchy and constraints, then choose composition.

## Default geometry

| Property | Default |
| --- | --- |
| Base rhythm | 4 units; use 8-unit relationships for major grouping |
| Compact gutter | 16 units |
| Standard gutter | 24 units |
| Wide gutter | 32 units |
| Content max | 1200–1280 units for product surfaces |
| Reading max | 640–760 units for prose |
| Default control height | 40–44 units |
| Primary action spacing | 16–24 units from adjacent content |
| Major section spacing | 48–80 units, based on hierarchy |

## Composition rules

- Establish one primary region, one supporting region, and optional utility regions.
- Align repeated content to shared columns or a clear stack.
- Use whitespace to group related content; do not fill every gap.
- Keep primary actions near the content they affect.
- Prefer a stable content container over full-bleed sections unless the content benefits from width.
- Use a side rail, top bar, bottom bar, or tab row only when it matches navigation behavior.
- Do not make every item a card. A list, table, or quiet section is often clearer.
- Use full-bleed imagery when the image is content. Use bounded imagery when it supports a task.

## Density

The default is comfortable density. Use compact density only for high-frequency data work and record the reason.

| Density | Row/control feel | Appropriate for |
| --- | --- | --- |
| Comfortable | Generous separation and readable labels | Most products, onboarding, learning, consumer tasks |
| Standard | Balanced separation | Most application surfaces |
| Compact | Tight but still operable | Tables, triage, operations, keyboard-heavy work |

Never use compact density to hide missing hierarchy.

## Responsive composition

The full responsive contract is in `responsive.md`. At the layout level, decide what happens to navigation, columns, media, tables, dialogs, and actions before choosing breakpoints.

## Layout review

Ask:

1. Can a user identify the screen purpose in a few seconds?
2. Is the primary task visually and spatially dominant?
3. Do alignment lines explain relationships?
4. Does the layout survive long content and missing content?
5. Does compact behavior preserve task order rather than merely compressing it?
