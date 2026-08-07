---
name: universal-ui-design
description: Create a complete product design package from a brief. Use ImageGen to explore the brand kit and screen direction, then normalize the accepted direction into product-specific tokens, components, accessibility rules, responsive behavior, content guidance, motion, and a realistic screen map. Use when asked to design a product, create a UI/UX system, make a brand kit, plan screens, generate design references, or review design quality. Do not use this skill to inspect or modify an existing codebase unless the user explicitly requests implementation or an audit.
---

# Universal UI Design

Create the design system before creating the screen set. The deliverable is a package that a separate execution agent can build in any framework or platform.

## Non-negotiable intent

- Start from the product job, audience, content, and constraints. Do not start from a style keyword.
- Use image generation to explore and communicate visual direction. Use the written design files to make the direction repeatable.
- Before locking a brand, system, or screen direction, generate meaningful alternatives when the decision is open. Ask the user to choose, combine named parts, request another option, or delegate the choice.
- Treat the screen set as one system. Shared shell, tokens, components, spacing, navigation, and state rules must be carried into every generated screen.
- Treat Apple as the primary quality foundation: purpose, agency, responsibility, familiarity, flexibility, simplicity, craft, and delight.
- Use Linear's discipline: understand the problem, choose a clear direction, remove friction, and verify the result.
- Borrow useful patterns from the other reference products listed in `references/principles.md`. Do not merge their visual identities or copy their token values.
- Derive a new product-specific token set from the approved brand kit. Keep token names stable, but do not reuse another product's palette, spacing, radius, or component recipe by default.
- Light and dark themes are required. Responsive behavior is required. Accessibility is required for every component and screen.
- Use sans-serif typography. Keep the family count low and the hierarchy intentional.
- Make reasonable assumptions when the brief is incomplete. Record them in `PRODUCT.md` and `DECISIONS.md` instead of stalling.
- Do not create the final screen set before the brand kit and design foundation are approved.
- Do not silently settle on a direction when the user has asked for options or has not approved the open decision.
- Do not accept a screen because it looks good in isolation. Audit it against the system and the other screens.
- Do not treat generated text, logos, icons, or UI geometry as reliable production output. Normalize them into written rules and implementation-ready assets.

## Operating modes

| Mode | Starting input | Inspect an existing project? | Primary output |
| --- | --- | --- | --- |
| Blank-slate design | Product idea, brief, or request | No | A complete design package |
| Design refinement | Existing `PRODUCT.md`, `DESIGN.md`, or image set | Only the supplied package | Revised package and decisions |
| Execution handoff | Finalized design package and explicit target | Only the target the user names | Implementation plan or code handoff |
| Design audit | Existing design package or supplied screens | Only the supplied material | Findings ranked by impact |

## Workflow

### 1. Establish the product brief

Create `PRODUCT.md` from `templates/PRODUCT.md`. Capture the product name and job, primary audience, context, highest-value task, product type, platform assumptions, content model, business or user outcome, constraints, accessibility needs, risks, and open decisions.

If the user gives only a loose idea, infer a plausible first product and state the assumption. Do not invent a large feature set just to fill space.

### 2. Explore before locking

When the visual or structural direction is still open, run `commands/explore.md` and follow `references/variation-exploration.md`.

Generate a labeled option set before committing to the brand kit, design tokens, product shell, primary screen composition, or landing-page structure. Keep the product, content conditions, frame, and accepted constraints stable while varying only the unresolved axes.

Use three options by default. Use four for landing-page architecture. Use up to five only when the user asks for more or the decision has several meaningful axes. Write `EXPLORATION.md`, show the tradeoffs, and ask the user to choose or delegate the choice. Record the result in `DECISIONS.md`.

Do not move an option into `BRAND-KIT.md`, `DESIGN.md`, or the screen set until it is accepted.

### 3. Make the brand kit

Create `BRAND-KIT.md` from `templates/BRAND-KIT.md` and follow `references/brand-kit.md` and `references/imagegen.md`.

Generate a brand board before screens. The default brand pass includes:

1. Wordmark direction.
2. Symbol or app-mark direction.
3. Lockup direction.
4. Monochrome and reversed versions.
5. Small-size legibility tests.
6. Color and surface direction for light and dark themes.
7. Type and image direction.
8. Icon and illustration rules.

Generate three focused variants when the direction is uncertain. Change one variable at a time. Preserve the approved decisions in `DECISIONS.md`. If a mark contains unstable generated lettering, redraw it as a vector or type-based asset before handoff.

### 4. Normalize the design foundation

Create `DESIGN.md` from `templates/DESIGN.md`. Read the principles, tokens, typography, layout, components, accessibility, responsive, interaction, motion, and content references named in the command files.

Define foundations in this order:

1. Semantic color roles for light and dark.
2. Typography roles and measurements.
3. Spacing, sizing, radius, border, elevation, and layer values.
4. Responsive bands and layout constraints.
5. Component anatomy, variants, states, and content limits.
6. Interaction feedback and motion.
7. Accessibility acceptance checks.

Use the default values in the references as starting points. Adjust them only when the product brief or accepted brand direction requires it. Record every deviation.

### 5. Build a realistic screen map

Create `SCREEN-MAP.md` from `templates/SCREEN-MAP.md` and use `references/screen-map.md`.

Choose the screen pack that matches the product type. The count is a realistic starting set, not a limit. Include the core task, entry point, exit state, navigation location, responsive change, and important empty, loading, error, and success states for each screen.

Do not create screens just to reach a number. Do not omit settings, onboarding, search, detail, or recovery flows when the product needs them.

### 6. Build the screen set

Run `commands/build.md` after the screen map is accepted. Create a canonical shell and a representative component sampler before generating the full set. Then build every screen in screen-map order.

For every screen, carry the same locked brand direction, semantic tokens, typography roles, spacing rhythm, navigation model, component contracts, content rules, and state vocabulary into the prompt packet. Add only the screen-specific task, content, states, and responsive transformation.

For each screen in the map:

1. Copy the approved brand and design decisions into the prompt packet.
2. Generate a coherent light-mode desktop reference by default.
3. Generate a dark-mode reference when surfaces or contrast change materially.
4. Generate compact/mobile behavior as a separate frame or annotated variation.
5. Generate targeted variants only for an unresolved decision.
6. Record the asset dimensions, aspect ratio, variant label, and locked inputs in `ASSET-MANIFEST.md`.
7. Write the screen record and audit the image against `DESIGN.md`, `SCREEN-MAP.md`, and the existing image set.
8. Fix shared drift at the source, regenerate affected images, and accept the screen only after the audit passes.

Use `templates/SCREEN.md` to document the screen outside the image. The screen document is authoritative for labels, behavior, states, and responsive rules.

### 7. Audit and normalize

Run `commands/review.md` and `references/image-audit.md` against the complete image set. Review every screen for product clarity, task completion, token consistency, light/dark parity, keyboard and focus behavior, contrast, labels, status communication, compact/standard/wide behavior, loading/empty/error/success/disabled/focus/pressed/selected/overflow states, motion purpose, reduced-motion behavior, content clarity, search intent, and asset consistency.

Fix systemic issues in `DESIGN.md` or a shared component contract first. Do not patch the same inconsistency separately in every screen. A visually attractive image with incorrect product structure fails the audit.

### 8. Finalize the execution package

The package is ready only when:

- `PRODUCT.md` explains the product and assumptions.
- `EXPLORATION.md` records meaningful alternatives when a direction was open.
- `BRAND-KIT.md` names the accepted direction and asset rules.
- `DESIGN.md` contains product-specific foundations and component contracts.
- `SCREEN-MAP.md` covers the product's primary flows.
- Every screen has a corresponding `SCREEN.md` record and approved reference.
- `DECISIONS.md` records accepted variants and rejected alternatives.
- `ASSET-MANIFEST.md` records every image and its status.
- `reviews/IMAGE-AUDIT.md` records the set-level consistency audit and regeneration decisions.
- `execution/BUILD-PLAN.md` gives the implementation agent the screen order and shared-system rules.
- Light, dark, responsive, accessibility, and state behavior are explicit.
- A reviewer can implement the package without guessing at values or behavior.

## Default output pack

Write to `design-output/<product-slug>/`. Preserve previous runs instead of overwriting them.

```text
design-output/<product-slug>/
├── PRODUCT.md
├── EXPLORATION.md
├── DECISIONS.md
├── BRAND-KIT.md
├── DESIGN.md
├── SCREEN-MAP.md
├── DECISIONS.md
├── CONTENT-PLAN.md
├── ASSET-MANIFEST.md
├── exploration/
├── brand/
├── screens/
├── reviews/
│   └── IMAGE-AUDIT.md
└── execution/
    └── BUILD-PLAN.md
```

The first run may use the templates in this repository. Do not create empty files that the run does not need; create an artifact when it has content to preserve.

## Command routing

| Request | Read first | Write |
| --- | --- | --- |
| Create a system | `commands/create.md`, `references/principles.md`, `references/tokens.md` | Product, brand, design, and screen-map files |
| Explore directions | `commands/explore.md`, `references/variation-exploration.md`, `references/imagegen.md` | Exploration options and user decision |
| Create or revise brand images | `commands/imagegen.md`, `references/brand-kit.md`, `references/imagegen.md` | Brand assets, manifest, and decisions |
| Design a screen | `commands/screen.md`, `references/screen-map.md`, `references/components.md` | Screen reference, states, and manifest entry |
| Build the full screen set | `commands/build.md`, `references/imagegen.md`, `references/image-audit.md` | All screen references, audits, and build plan |
| Review a package | `commands/review.md`, `references/accessibility.md`, `references/anti-slop.md` | Review report and systemic decisions |
| Write public-facing copy | `references/content-seo.md` | Content plan and screen copy |

## Failure handling

- If ImageGen returns inconsistent lettering, keep the visual direction, reject the lettering, and move the final wording into the written brand kit.
- If a color fails contrast, change the semantic role or surface pairing; do not add a shadow to hide the failure.
- If two images disagree, identify whether the drift comes from the token, component, shell, prompt lock, or image artifact. Fix that source and regenerate the affected set.
- If an image looks polished but the task order, navigation, or state behavior is wrong, reject the image and correct the screen contract.
- If the user has not chosen among meaningful options, pause at the exploration gate. Do not hide the choice inside a token or brand decision.
- If a component needs too many variants, identify the underlying task difference and split the component only when behavior truly differs.
- If a desktop layout collapses on compact screens, redesign the information hierarchy; do not only shrink the type.
- If the brief is ambiguous, make the smallest reasonable assumption and record it.
- If a screen cannot be described by its task, content, states, and responsive change, it is not ready to generate.
