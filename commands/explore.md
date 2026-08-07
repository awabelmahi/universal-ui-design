# Explore directions

Use this command before locking the brand kit, design system, screen architecture, or landing-page composition.

## Read

1. `skills/universal-ui-design/SKILL.md`
2. `PRODUCT.md`
3. `references/variation-exploration.md`
4. `references/imagegen.md`
5. `references/principles.md`
6. `references/anti-slop.md`
7. `references/content-seo.md` for landing pages or public marketing surfaces

## Sequence

1. Identify the decision that is still open.
2. Name the one or two visual or structural axes that may vary.
3. Lock the invariants: product, audience, content, frame, theme, brand constraints, and required task.
4. Generate a labeled option set with stable dimensions and the same content conditions.
5. Review the options for task fit, hierarchy, familiarity, accessibility, and product character.
6. Write `EXPLORATION.md` with the options, tradeoffs, and recommendation.
7. Ask the user to choose an option, combine named parts, request another direction, or let the agent choose.
8. Record the decision in `DECISIONS.md`.
9. Only after the decision is accepted, create or update `BRAND-KIT.md`, `DESIGN.md`, or the screen set.

Do not silently choose a direction when the user has not approved it. If the user delegates the choice, choose the strongest option using `references/principles.md` and record why.

## Output

```text
design-output/<product-slug>/
├── EXPLORATION.md
├── DECISIONS.md
└── exploration/
    ├── brand-option-a.png
    ├── brand-option-b.png
    └── brand-option-c.png
```

## User decision prompt

End the exploration with a compact question:

> I generated three directions. Choose A, B, or C; combine specific parts such as “A's structure with B's surface treatment”; request another option; or say “choose for me.” I will lock the decision before building the system.

Short replies are enough: “I like A,” “B, but use A's navigation,” “show me two more,” or “choose for me.”
