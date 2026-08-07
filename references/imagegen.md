# ImageGen workflow

ImageGen is the visual exploration layer of the pipeline. It can find stronger compositions and less predictable visual directions than a text-first implementation agent, but it does not own product semantics, exact copy, tokens, or interaction behavior.

## Generation contract

Every image request includes the same locked context:

- Product and primary user task.
- Screen-set ID and screen ID.
- Accepted brand direction and anti-references.
- Canonical shell and navigation model.
- Token summary: type roles, semantic colors, spacing rhythm, radii, surfaces, density, and control size.
- Required components and states.
- Viewport class, dimensions, theme, and aspect ratio.
- What must remain unchanged.
- What may vary for this screen.

Use one shared prompt prefix for the set and a short screen-specific suffix. Do not let each screen invent its own style description.

## Generate in this order

1. Create a brand board and choose one direction.
2. Create a canonical shell and component sampler.
3. Create one representative primary screen.
4. Confirm the system through a light/dark and compact/standard comparison.
5. Generate every screen in `SCREEN-MAP.md` order.
6. Generate targeted variants only when a decision is unresolved.
7. Audit every screen and the full set before handoff.

## Preserve structure

Keep these stable across the set unless the screen contract explicitly changes them:

- Page or app shell.
- Navigation placement and current-location treatment.
- Page gutters, content max, and alignment lines.
- Type family, role, weight, and hierarchy.
- Surface, border, radius, elevation, and control treatment.
- Primary and destructive action language.
- Empty, loading, error, success, and recovery vocabulary.
- Image crop, aspect ratio, and illustration or photography direction.

The screen-specific prompt may change task content, layout zones, and state detail. It must not silently change the design system.

## Prompt requirements

Include product context, target platform, viewport, task hierarchy, visual direction, type behavior, palette roles, surface treatment, density, component states, responsive transformation, and the fact that the frames are one coherent set.

Do not ask ImageGen to author final UI copy, exact production controls, or final token values. Use the image for composition and visual direction. Resolve exact labels, behavior, and values in the written screen record and design system.

## Asset rules

- Keep one canonical frame size for each screen class.
- Prefer high-resolution sources and stable aspect ratios.
- Use deterministic filenames with product, screen, theme, frame class, and variant.
- Preserve accepted and rejected variants when they explain a decision.
- Record source, dimensions, aspect ratio, theme, variant, prompt summary, and acceptance status in `ASSET-MANIFEST.md`.
- Copy accepted assets into the output package. Do not leave them only in a tool cache.
