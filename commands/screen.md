# Screen

Use this command after `BRAND-KIT.md` and `DESIGN.md` have an accepted baseline.

## Read

1. `skills/universal-ui-design/SKILL.md`
2. `references/screen-map.md`
3. `references/components.md`
4. `references/interaction.md`
5. `references/accessibility.md`
6. `references/responsive.md`
7. `references/motion.md`
8. `references/content-seo.md` for a public or marketing page
9. The relevant screen entry in `SCREEN-MAP.md`
10. `references/image-audit.md`

## Sequence

1. Choose one screen and state its task.
2. Read the current token and component contracts instead of inventing local values.
3. Define the information hierarchy and primary action.
4. Define light and dark surface treatment.
5. Define standard and compact behavior.
6. List loading, empty, error, success, disabled, selected, pressed, focus, and overflow states that matter.
7. Generate the reference image with the shared screen-set prompt prefix and a locked screen-specific suffix.
8. Create a `SCREEN.md` record with exact labels, content rules, behavior, and accessibility notes.
9. Audit the image against the design system and neighboring screens.
10. Fix shared drift at the source and regenerate affected screens before moving on.

## Screen acceptance

A screen is ready when a reviewer can answer:

- What is the user's job here?
- What should be noticed first?
- What is the next action?
- What happens when data is missing, slow, invalid, or complete?
- How does the layout change on a compact surface?
- How does the screen work without color, hover, or motion?
- Which token and component rules explain the visual result?
- Does this screen agree with the canonical shell and repeated components in the rest of the set?
