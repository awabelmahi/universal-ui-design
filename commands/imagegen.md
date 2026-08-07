# Image generation

Use this command for brand boards, visual references, screen exploration, and focused design variants.

## Read

1. `skills/universal-ui-design/SKILL.md`
2. `references/brand-kit.md` for brand assets
3. `references/imagegen.md` for prompt and asset rules
4. `references/principles.md` for quality direction
5. `references/anti-slop.md` for rejection criteria
6. `DESIGN.md` and `DECISIONS.md` when revising an approved package

## Prompt packet

Before every generation, write down:

- Product and screen purpose.
- Locked brand decisions.
- Light or dark theme.
- Platform and frame class.
- Layout and content hierarchy.
- Required components and states.
- Image dimensions and aspect ratio.
- What is allowed to vary.
- What must not change.

Never ask the image model to invent the system while also asking it to produce the final screen. First establish the kit. Then keep the kit locked while exploring screens.

## Generation loop

1. Generate one baseline.
2. Inspect the whole image and the small details.
3. Name the actual issue: hierarchy, density, contrast, alignment, content, or visual drift.
4. Change one or two variables.
5. Generate a focused revision or variant.
6. Keep the accepted image and the rejected image when the decision is useful.
7. Record the accepted decision and asset metadata.

## Output rules

- Prefer high-resolution sources: 1536×1024 for landscape boards and desktop references, 1024×1536 for portrait references, and 1024×1024 for marks or square boards. Use larger supported dimensions when detail makes execution easier.
- Keep the frame size stable across variants of one screen.
- Use stable filenames such as `brand-board-light-v01.png` and `screen-dashboard-dark-v02.png`.
- Record dimensions, aspect ratio, theme, variant, prompt summary, and acceptance status in `ASSET-MANIFEST.md`.
- Keep generated UI text short or abstract when exact copy would be unreliable. Write final copy in the screen document.
- Do not use an image as the only source of truth for spacing, content, states, or behavior.
- Do not leave a project-bound asset only in a tool cache. Copy accepted assets into the output folder.
