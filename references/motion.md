# Motion

Motion should explain change, preserve orientation, and make feedback feel immediate. It should never be required to understand or complete the task.

## Default motion tokens

| Token | Default | Use |
| --- | ---: | --- |
| `motion.duration.instant` | 0–80 ms | State color or opacity change |
| `motion.duration.fast` | 120 ms | Hover, press, small control feedback |
| `motion.duration.base` | 180 ms | Tooltip, popover, list insertion |
| `motion.duration.slow` | 240–360 ms | Dialog, sheet, route or major region |
| `motion.easing.standard` | Ease-out | Entering or responding |
| `motion.easing.exit` | Ease-in | Leaving or dismissing |
| `motion.easing.emphasis` | Controlled spring or custom curve | Meaningful completion only |

Use one standard curve and one exit curve unless the product has a strong reason for more.

## Use motion for

- Showing where content came from or went.
- Connecting an action to its result.
- Preserving context when a panel, sheet, or dialog opens.
- Indicating progress or completion.
- Making a hierarchy change easier to follow.

## Avoid motion for

- Decorative looping backgrounds.
- Repeated attention-grabbing movement.
- Replacing a visible status or label.
- Delaying a task that could finish immediately.
- Making a layout look busy while content loads.

## Reduced motion

For reduced-motion preferences:

- Remove parallax, zoom, large translation, and looping movement.
- Keep instant state feedback, focus movement, and essential progress indication.
- Use opacity or a short crossfade only when it preserves orientation.
- Never hide status because animation was removed.

## Motion acceptance

Every animated pattern names its trigger, purpose, duration, curve, property, interrupt behavior, and reduced-motion alternative. Do not invent motion per screen when a shared pattern exists.
