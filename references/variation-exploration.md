# Variation exploration

Explore alternatives before locking the design system. The goal is to expose meaningful choices while the cost of change is low, not to generate an endless gallery.

## When to branch

Generate options when any of these decisions is unresolved:

- Brand mark, color character, type direction, or image direction.
- Product shell, navigation model, or page hierarchy.
- Primary screen composition or action placement.
- Landing-page story, section order, hero structure, or proof treatment.
- Motion character or density.
- The user asks for alternatives, references, a different direction, or more options.

Do not branch when the design decision is already accepted. Use a targeted revision instead.

## Default option counts

| Decision | Default options | Vary |
| --- | ---: | --- |
| Brand kit | 3 | Mark family, shape language, surface character, or accent direction |
| Product shell | 2–3 | Navigation placement, content frame, density, or region hierarchy |
| Primary product screen | 3 | Information hierarchy, action placement, or panel composition |
| Landing page | 4 | Hero composition, section order, proof rhythm, and conversion path |
| Motion direction | 2 | Calm utility versus more expressive emphasis |
| Content direction | 2 | Direct product explanation versus editorial or narrative presentation |

Generate up to five only when the user asks for more or the decision has several genuinely independent axes. More images do not create more insight when the options differ only cosmetically.

## Landing-page option pack

For a landing page, keep the same product, audience, offer, approximate copy length, and viewport across the set. Vary the page logic:

1. **Product-first:** show the product and its core action immediately.
2. **Outcome-first:** lead with the user problem and result, then explain the mechanism.
3. **Proof-first:** establish trust or evidence early, then show the product.
4. **Editorial:** use a more narrative sequence when the brand and content justify it.

Each option must still include a clear promise, supporting explanation, proof or mechanism, useful objections or FAQ content, and one primary next action. Do not use variation as an excuse to remove required information.

## Variant protocol

### 1. Define the decision

Write the open question in one sentence, for example:

> Should the landing page lead with the product surface, the customer outcome, or evidence of trust?

### 2. Lock the invariants

Keep these stable across options:

- Product and audience.
- Core task or conversion goal.
- Content length and essential nouns.
- Frame size, aspect ratio, and theme.
- Accessibility baseline.
- Brand constraints that are already accepted.

### 3. Name the axes

Change no more than two high-level axes per option. Examples include hierarchy, layout, navigation, type scale, surface treatment, density, image treatment, or motion character.

### 4. Generate labeled options

Use clear labels such as `Option A: product-first`, not `v2-final-final`. Use stable filenames and record the prompt summary, dimensions, changed axes, and acceptance status.

### 5. Review the set

For each option, record:

- What changed.
- What stayed locked.
- Best use case.
- Main tradeoff.
- Accessibility or responsive risk.
- Recommendation, if one is requested.

### 6. Ask for a decision

The user may choose one, combine named aspects, request another option, or delegate the decision. Do not convert a recommendation into an accepted system without that decision.

### 7. Lock and normalize

Once accepted, move the chosen values into `BRAND-KIT.md`, `DESIGN.md`, or the relevant screen record. Mark rejected options as rejected, not as hidden alternatives.

## Anti-slop rules for variants

- Do not make options differ only by accent color.
- Do not produce three versions of the same generic hero.
- Do not use a new gradient, font, card style, or decorative treatment as a substitute for a structural idea.
- Do not vary content length to make one option look better.
- Do not let generated lettering, fake UI copy, or impossible controls decide the direction.
- Do not keep generating after the user has enough information to choose.
