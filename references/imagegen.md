# ImageGen Workflow

ImageGen is used to explore the visual language and communicate a design direction. It is not trusted to produce exact production tokens or interaction semantics.

## Generate in this order

1. Create a reference board with the product brief, primary task, audience, desired references, and anti-references.
2. Create a small set of related frames: shell, primary screen, repeated component, action state, and narrow or mobile view when relevant.
3. Keep the same product objects, typography direction, surface logic, spacing grammar, and content tone across the set.
4. Compare directions and choose one. Do not keep generating variants without making a decision.
5. Extract the decisions into `DESIGN.md`: type roles, semantic colors, spacing, layout, surfaces, components, states, motion, themes, and accessibility.
6. Rebuild the screens from the kit. Correct inconsistent text, alignment, geometry, and states from the images.

## Prompt requirements

Include product context, target platform, viewport, task hierarchy, visual direction, type behavior, palette roles, surface treatment, density, component states, and the fact that the frames are a coherent set.

Do not ask ImageGen to bake detailed UI copy, exact controls, or final token values into a mockup when the code will own those details.
