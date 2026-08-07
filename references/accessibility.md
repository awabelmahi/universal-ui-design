# Accessibility

Accessibility is a design requirement for every output. Use WCAG 2.2 AA as the web baseline and apply the equivalent platform guidance for native surfaces.

## Perceivable

- Normal text meets at least 4.5:1 contrast against its immediate surface.
- Large text meets at least 3:1.
- Meaningful icons, controls, boundaries, and focus indicators have sufficient non-text contrast.
- Color is never the only signal for status, selection, validation, or priority.
- Images have an appropriate alternative: useful text, an empty alternative for decoration, or a longer description when the image carries complex information.
- Text can resize and reflow without loss of meaning or action.

## Operable

- Every action is reachable through keyboard or the platform's primary non-pointer input.
- Focus is visible, not clipped by a container, and follows a logical order.
- Focus does not disappear into a modal, menu, or route change.
- Pointer targets are at least 44×44 units by default on touch surfaces. If a smaller visual icon is necessary, provide a larger hit area.
- Do not require dragging, hover, color, sound, or motion to complete a core task.
- Avoid time limits. If timing is necessary, warn, pause, extend, or save work.
- Do not create flashing or rapidly repeating motion.

## Understandable

- Labels describe the action or field.
- Navigation order and naming stay consistent across screens.
- Errors identify the field or task, explain the fix, and preserve entered content.
- Confirmation describes what happened and what the user can do next.
- Plain language is the default. Do not use internal names as user-facing copy.

## Robust

- Use semantic elements or the native platform equivalent before adding custom roles.
- Do not use an ARIA role to repair a component whose native behavior is missing.
- Give dynamic status a clear announcement strategy without repeating every visual change.
- Ensure names, values, roles, and states are exposed to assistive technology.

## Accessibility acceptance table

| Check | Pass condition |
| --- | --- |
| Contrast | Text, icon, boundary, status, and focus pairings are recorded and tested |
| Focus | Every interactive element has a visible, non-clipped focus state |
| Keyboard | Core tasks work without a pointer and order is logical |
| Labels | Inputs and icon-only actions have accessible names |
| Errors | User can identify, fix, and recover from an error |
| Status | Loading, success, and failure are communicated without color alone |
| Motion | Reduced-motion behavior is defined and useful |
| Reflow | Compact or zoomed content keeps meaning and actions reachable |
| Content | Text is readable, direct, and not dependent on tiny metadata |

## Review edge cases

Check long labels, empty collections, one-item collections, large text, zoom, keyboard-only input, screen-reader reading order, slow networks, failed image loads, high-contrast settings, right-to-left or localized text when relevant, and destructive recovery.
