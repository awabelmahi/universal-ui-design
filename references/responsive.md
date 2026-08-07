# Responsive behavior

Responsive design is a change in information hierarchy, not a smaller desktop screenshot. Define compact behavior even when the first reference is wide.

## Default bands

| Band | Width cue | Default behavior |
| --- | --- | --- |
| Compact | Up to about 767 units | Single-column priority, reachable primary action, simplified navigation |
| Standard | About 768–1199 units | Two-region layouts where useful, normal navigation, balanced density |
| Wide | About 1200 units and above | Full content container, side regions, richer comparison or utility |

Use content-driven breakpoints when the product needs them. Do not create many breakpoints to patch individual elements.

## Transformation rules

| Surface | Compact default | Standard/wide default |
| --- | --- | --- |
| Primary navigation | Bottom bar, top bar, or labeled menu based on frequency | Side or top navigation with visible current location |
| Secondary navigation | Sheet, segmented control, or scrollable tab row | Side rail or full tab row |
| Two-column content | Stack by task priority | Preserve columns when comparison helps |
| Table | Prioritized rows, horizontal scroll with clear affordance, or detail drill-in | Full table with sorting and filtering |
| Dialog | Full-screen or tall sheet when content is substantial | Focused dialog or side panel |
| Form | Single-column, sectioned by task | Multi-column only when fields are related and scanning improves |
| Toolbar | Keep primary actions; move low-frequency actions to overflow | Show tools with clear grouping |
| Media | Crop or recompose without losing subject | Wider crop or supporting media region |
| Dense feed | Keep task and status; defer metadata | Show more metadata when it supports scanning |

## Responsive rules

- Keep the primary task in the same conceptual place.
- Do not hide a required action only because the screen is compact.
- Do not use horizontal scrolling for primary content unless the task is inherently comparative.
- Preserve touch target size while reducing decoration.
- Let content wrap and grow; avoid fixed heights for variable copy.
- Keep focus and reading order logical after columns stack.
- Test with the shortest, longest, missing, and error content.
- Test light and dark behavior at every band.

## Responsive acceptance

For every screen record:

- What is removed, moved, collapsed, or stacked?
- What remains visible without opening a menu?
- Where does the primary action go?
- How do states fit?
- What happens to tables, media, dialogs, and long text?
