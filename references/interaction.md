# Interaction

Good interaction makes the product predictable. Use familiar patterns, direct feedback, and a clear recovery path.

## Interaction rules

- Every interactive element has an obvious purpose and result.
- Prefer one primary action per region.
- Keep destructive actions visually distinct and explicit.
- Show progress when an action takes noticeable time.
- Prevent duplicate submission without trapping the user.
- Preserve input when validation fails or a request errors.
- Use undo when it is safer than a confirmation dialog.
- Keep feedback close to the action or affected content.
- Use confirmation only when the consequence is meaningful or difficult to reverse.
- Never make hover, color, or animation the only way to understand a state.
- Keep links for navigation and buttons for actions.

## State choreography

Describe the path in this order:

`idle → intent → pending → success | error → recovery`

For each transition, state:

- What changes visually.
- What the user can do.
- What assistive technology should receive.
- What happens if the user leaves or repeats the action.

## Navigation

- Use the smallest navigation structure that fits the product.
- Keep the current location visible.
- Use labels that name the destination or outcome.
- Preserve back, close, cancel, and escape paths.
- Keep navigation stable across screens unless context truly changes.

## Forms

1. Ask only for information needed at that moment.
2. Group related fields.
3. Use the input type that matches the data.
4. Explain format before failure when the format is not obvious.
5. Validate at the right moment; do not interrupt every keystroke without benefit.
6. Summarize the result and the next action.

## Feedback choices

| Situation | Default feedback |
| --- | --- |
| Immediate reversible change | Inline change or undo |
| Short request | Button pending state and local success/error |
| Long request | Progress region with useful status |
| Background completion | Toast or activity status plus a durable record |
| Validation | Field-level guidance and summary when several fields fail |
| Empty product area | Explanation plus next action |
