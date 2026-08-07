# Universal UI Design

An image-first design workflow for creating coherent, accessible product interfaces before implementation.

<!-- Preview image slot: add assets/preview.png after the first accepted design run. -->

The repo produces a design package that another agent can execute in any target environment. It is framework-neutral. It does not generate a starter app, a design-system HTML file, or a token compiler.

## The promise

The agent makes the important design decisions in a stable order:

1. Understand the product, audience, job, and constraints.
2. Create a brand kit and visual direction with image generation.
3. Convert the accepted direction into product-specific tokens and component rules.
4. Map a realistic set of screens and states.
5. Generate screen references and focused variants.
6. Review for accessibility, responsive behavior, interaction quality, motion, content, and visual drift.
7. Finalize a package that an implementation agent can follow without guessing.

## Design point of view

Apple is the primary foundation: clear purpose, familiar behavior, agency, flexibility, simplicity, craft, and delight. Linear supplies the product discipline: build for the user's work, remove friction, make the next action obvious, and verify the problem before polishing the solution.

The other reference products contribute patterns where they are useful: Stripe for trustworthy systems and accessible color; Notion and GitHub for information architecture; Airbnb and Spotify for discovery; Arc and Superhuman for focused workflows; Figma and Framer for composable systems; Vercel for restrained visual hierarchy; Cash App and Mercury for confidence around important actions; Headspace, Readwise, and Brilliant for learning and habit loops; Dropbox and Slack for collaboration; Perplexity for search and answer surfaces.

Those references inform decisions. Their tokens are never copied as a universal preset. Every product gets a new, named token set derived from its own brand kit, audience, content, and platform constraints.

## Repository structure

```text
universal-ui-design/
├── .codex-plugin/
│   └── plugin.json
├── README.md
├── ORIGIN.md
├── assets/
│   ├── README.md
│   └── examples/              # Empty slots for accepted visual examples
├── skills/
│   └── universal-ui-design/
│       └── SKILL.md
├── commands/
│   ├── create.md
│   ├── imagegen.md
│   ├── screen.md
│   └── review.md
├── references/
│   ├── accessibility.md
│   ├── anti-slop.md
│   ├── brand-kit.md
│   ├── components.md
│   ├── content-seo.md
│   ├── imagegen.md
│   ├── interaction.md
│   ├── layout.md
│   ├── motion.md
│   ├── principles.md
│   ├── responsive.md
│   ├── screen-map.md
│   ├── sources.md
│   ├── tokens.md
│   └── typography.md
├── templates/
│   ├── BRAND-KIT.md
│   ├── DESIGN.md
│   ├── PRODUCT.md
│   ├── SCREEN-MAP.md
│   └── SCREEN.md
└── evals/
    ├── acceptance.md
    └── verify-repo.ps1
```

## Use it

Load `skills/universal-ui-design/SKILL.md` when the request is to design a product from a brief, create a brand kit, map screens, generate image references, or review a finalized design package.

The source of truth for execution is the finalized `DESIGN.md` plus the approved brand and screen artifacts. Images show the direction. The written system resolves the details that an implementation agent must reproduce.

## Install

After publishing the repository, install the skill with the portable skills CLI:

```bash
npx skills add <owner>/universal-ui-design --skill universal-ui-design --agent codex
```

The same repository can be used as a plugin through `.codex-plugin/plugin.json` or read directly from `skills/universal-ui-design/SKILL.md`.

## Visual examples

The README is prepared for accepted output without pretending that placeholder images are finished work.

<!-- Header image slot: add assets/header.png after the first accepted run. -->
<!-- ![Universal UI Design header](assets/header.png) -->

### Brand kit

<!-- Brand board slot: add assets/examples/brand-kit.png. -->
<!-- ![Brand kit example](assets/examples/brand-kit.png) -->

### Screen references

<!-- Screen reference slot: add assets/examples/screen-reference.png. -->
<!-- ![Screen reference example](assets/examples/screen-reference.png) -->

### Final package

<!-- Package overview slot: add assets/examples/package-overview.png. -->
<!-- ![Final package example](assets/examples/package-overview.png) -->

### Commands

- `create` starts the product brief, brand kit, design foundation, and screen map.
- `imagegen` creates or revises brand and screen references while preserving locked decisions.
- `screen` creates a screen reference from the approved system and records its states.
- `review` audits the package before execution and lists blocking changes.

## Output

Each run writes to a new folder so accepted work is preserved:

```text
design-output/<product-slug>/
├── PRODUCT.md
├── BRAND-KIT.md
├── DESIGN.md
├── SCREEN-MAP.md
├── DECISIONS.md
├── CONTENT-PLAN.md
├── ASSET-MANIFEST.md
├── brand/
├── screens/
├── reviews/
└── execution/
```

The default output includes light and dark themes, responsive behavior, component states, motion guidance, content rules, and a screen set sized for the product type. It does not stop at a single hero image.

## Scope boundaries

- Framework-neutral: the handoff can target web, mobile, desktop, or native UI.
- Sans-serif typography only, with one primary family unless the brief proves a second is necessary.
- Accessibility is part of every component and screen, not a later pass.
- Mobile behavior is included in the system even when the first deliverable is a desktop screen.
- No automatic inspection of an existing project during blank-slate design.
- No generated image is treated as production code, exact copy, or a final logo without normalization.

## Status

Working mock repo. The workflow, references, templates, and checks are the product. Asset generation and implementation remain separate stages.
