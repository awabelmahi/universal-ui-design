# Acceptance checklist

Run this checklist against a generated package, not only the repository itself.

## Product

- [ ] The brief names the product job, audience, content, platform, and success condition.
- [ ] Assumptions and non-goals are recorded.
- [ ] The primary flow has a useful success and recovery path.
- [ ] Screen count matches the product type and real feature surface.

## Brand kit

- [ ] Wordmark, symbol, lockup, monochrome, reversed, and small-size uses are addressed where relevant.
- [ ] Generated lettering and unstable marks are normalized before implementation.
- [ ] Light and dark surface direction is defined.
- [ ] Type, icon, image, and motion direction is repeatable.
- [ ] Accepted and rejected visual variants are recorded.

## System

- [ ] Semantic tokens exist for light and dark themes.
- [ ] Large surfaces do not default to pure white or pure black without a reason.
- [ ] Product-specific values are written in `DESIGN.md`.
- [ ] Components describe anatomy, variants, states, responsive behavior, and accessibility.
- [ ] Values are not copied from a reference product without a recorded reason.

## Interaction

- [ ] Primary and secondary actions are clear.
- [ ] Loading, empty, error, success, disabled, selected, pressed, focus, and overflow states are covered where relevant.
- [ ] Errors preserve input and provide recovery.
- [ ] Destructive actions communicate consequence.
- [ ] Navigation and back/close/cancel paths are predictable.

## Accessibility

- [ ] Contrast is checked for text, icons, boundaries, status, and focus.
- [ ] Color is not the only signal.
- [ ] Core tasks work through keyboard or the platform's primary non-pointer input.
- [ ] Focus is visible, logical, and not clipped.
- [ ] Labels and names exist for fields and icon-only controls.
- [ ] Touch targets are appropriate for the platform.
- [ ] Reduced motion preserves feedback and status.
- [ ] Long content, large text, zoom, and reflow are considered.

## Responsive

- [ ] Compact, standard, and wide behavior is explicit.
- [ ] Navigation transforms intentionally.
- [ ] The primary action remains reachable.
- [ ] Tables, dialogs, media, and long text have a compact rule.
- [ ] Theme and state behavior remains valid at each band.

## Content and SEO

- [ ] Public pages have a distinct purpose, URL, title, description, heading structure, and CTA.
- [ ] Copy is specific, people-first, and free of unsupported claims.
- [ ] Link text names the destination.
- [ ] Meaningful images have useful alternative text.
- [ ] Structured data matches visible content and is complete enough to be useful.
- [ ] Product UI copy uses consistent nouns and direct actions.

## Image and handoff

- [ ] Images have stable dimensions, aspect ratios, filenames, and variant labels.
- [ ] Accepted assets are stored in the output package.
- [ ] Written records are authoritative for copy, behavior, states, and tokens.
- [ ] A separate implementation agent can build without guessing.
