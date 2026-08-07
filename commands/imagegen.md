# Image generation

Use this command for brand boards, visual references, screen exploration, and focused design variants.

## Read

1. `skills/universal-ui-design/SKILL.md`
2. `references/variation-exploration.md` when the direction is not accepted
3. `references/brand-kit.md` for brand assets
4. `references/imagegen.md` for prompt and asset rules
5. `references/principles.md` for quality direction
6. `references/anti-slop.md` for rejection criteria
7. `DESIGN.md` and `DECISIONS.md` when revising an approved package

## Choose the phase

### Before a direction is accepted

Run the variation protocol. Generate labeled options with stable frame, content, and product conditions. Change only the unresolved axes. Write `EXPLORATION.md`, show the tradeoffs, and ask the user to choose, combine named parts, request another option, or say `choose for me`.

Do not convert an unapproved option into the token table, brand kit, or screen set.

### After a direction is accepted

Use the accepted brand, tokens, shell, and component contracts as locked inputs. Generate the complete screen set through `commands/build.md` or a focused screen through `commands/screen.md`. A revision should change one or two named variables, not reopen the whole visual system.

## Prompt packet

Before every generation, write down:

- Product and screen purpose.
- Exploration ID or screen-set ID.
- Locked brand and system decisions.
- Open axis, if this is a variation.
- Light or dark theme.
- Platform and frame class.
- Layout and content hierarchy.
- Required components and states.
- Image dimensions and aspect ratio.
- What is allowed to vary.
- What must not change.

## Generation loop

1. Generate the baseline or labeled option set.
2. Inspect the whole image and the small details.
3. Name the actual issue or decision: hierarchy, density, contrast, alignment, content, structure, or visual drift.
4. Change one or two variables.
5. Generate a focused revision or variant.
6. Keep accepted and rejected images when the decision is useful.
7. Record the asset metadata and the decision status.
8. Ask for user approval when the direction is still open.

## Output rules

- Prefer high-resolution sources: 1536x1024 for landscape boards and desktop references, 1024x1536 for portrait references, and 1024x1024 for marks or square boards. Use larger supported dimensions when detail makes execution easier.
- Keep the frame size stable across variants of one decision or screen class.
- Use stable filenames such as `landing-option-a.png`, `brand-board-option-b.png`, and `screen-dashboard-dark-v02.png`.
- Record dimensions, aspect ratio, theme, variant, prompt summary, changed axes, and acceptance status in `ASSET-MANIFEST.md`.
- Keep generated UI text short or abstract when exact copy would be unreliable. Write final copy in the screen document.
- Do not use an image as the only source of truth for spacing, content, states, structure, or behavior.
- Do not leave a project-bound asset only in a tool cache. Copy accepted assets into the output folder.
