# Build the screen set

Use this command after the brand kit, design foundation, and screen map are accepted. It builds the complete screen set as a coherent image and implementation package.

## Read

1. `skills/universal-ui-design/SKILL.md`
2. `DESIGN.md`
3. `BRAND-KIT.md`
4. `SCREEN-MAP.md`
5. `EXPLORATION.md` when an exploration was run
6. `DECISIONS.md`
7. `references/imagegen.md`
8. `references/image-audit.md`
9. `references/components.md`
10. `references/responsive.md`
11. `references/accessibility.md`
12. `references/interaction.md`
13. `references/motion.md`

## Preflight

Before generating the first screen, confirm:

- The product job and primary flow are explicit.
- Any open direction has passed the exploration gate and has a recorded user decision.
- The screen map has IDs, order, navigation, states, and responsive changes.
- Light and dark semantic roles are complete.
- The canonical shell, navigation, typography roles, spacing rhythm, radii, surfaces, and primary action treatment are locked.
- The component inventory names the patterns that screens may use.
- The output folder and asset manifest are ready.

If a decision is missing, resolve it in `DESIGN.md` or `DECISIONS.md` before generating a screen. Do not make a local screen decision and let it become an accidental system rule.

## Build loop

Run the screen map in order:

1. Create a prompt packet from the locked brand, token, component, and shell decisions.
2. Add the screen-specific task, content, states, and responsive transformation.
3. Generate the light-mode reference at the canonical frame size.
4. Generate dark and compact variants when the screen contract requires them.
5. Write the screen record with exact content and behavior.
6. Run the image audit for the screen.
7. Fix systemic drift in the source rule, then regenerate the affected screen.
8. Mark the screen `accepted` only when it passes the screen audit.
9. Continue until every screen in `SCREEN-MAP.md` has an accepted reference or a recorded blocker.

Do not optimize one screen in isolation if the change affects the shared shell, spacing, type, color, or component behavior. Update the system once, then regenerate every affected screen.

## Set-level audit

After the screen loop, run `references/image-audit.md` across the entire set. Compare repeated elements side by side: shell, navigation, page gutters, headings, controls, cards, tables, status colors, empty states, dialogs, and motion cues.

Write `reviews/IMAGE-AUDIT.md` and `execution/BUILD-PLAN.md`. The final verdict must be `ready`, `ready with recorded deferrals`, or `not ready`.

## Implementation handoff

If the user names a target stack, use the finalized package to build the actual interface after the image set passes. The implementation must use the recorded tokens and components, not trace pixels from each image independently. If no target stack is named, stop at the framework-neutral execution brief.
