# Universal UI Design

<!-- Uncomment this block after adding assets/header.png. -->
<!--
<p align="center">
  <img src="assets/header.png" alt="Universal UI Design" width="100%" />
</p>
-->

Framework-agnostic design guidance for AI agents. It uses image generation to establish a strong visual direction, then turns that direction into a coherent, accessible design system and screen package.

## Install

```bash
npx skills add https://github.com/awabelmahi/universal-ui-design --skill universal-ui-design
```

For Codex, the explicit agent form is also supported:

```bash
npx skills add https://github.com/awabelmahi/universal-ui-design --skill universal-ui-design --agent codex
```

## Why this exists

Text-first coding agents tend to complete UI requests from familiar code and layout patterns. That is why many generated interfaces converge on the same centered hero, card grid, dashboard, pill, and sidebar combinations. The problem is deeper than style. These agents can also miss the real structure of a product: how people move through it, what belongs in navigation, which information matters first, and what should happen when a task is slow, empty, invalid, or complete.

Image-generation models are not completing the task from the same code-template path. They can explore composition, hierarchy, shape, and visual relationships without being tied to the interface patterns a text model reaches for during implementation. That is why visual references are useful here: they help establish a stronger design direction before an agent starts filling in familiar defaults. Universal UI Design then extracts the accepted direction and resolves the product structure in writing: tokens, components, navigation, content rules, responsive behavior, accessibility requirements, motion, states, and screen references that an implementation agent can reproduce.

The image is the starting point. The written design package is the source of truth.

## What it does

| Stage | Output | Purpose |
| --- | --- | --- |
| Brand | Brand board, mark directions, color and type direction | Establish a visual language before screens |
| Foundation | Product-specific tokens, typography, layout, components, states | Make the visual language repeatable |
| Mapping | Realistic screen map and navigation model | Define the product surface instead of inventing isolated screens |
| References | Light, dark, compact, standard, and wide screen images | Explore and communicate the approved direction |
| Build and audit | Complete screen set, image audit, regeneration log, and build plan | Catch drift and produce a coherent implementation package |
| Handoff | `PRODUCT.md`, `BRAND-KIT.md`, `DESIGN.md`, screen records, decisions, and asset manifest | Give another agent enough information to build without guessing |

## Design baseline

Apple is the primary foundation: purpose, agency, familiarity, flexibility, simplicity, craft, and delight. Linear adds product discipline: understand the user's problem, keep the next action clear, reduce friction, and verify the result.

The skill also draws on useful patterns from Stripe, Notion, Airbnb, Arc, Spotify, Superhuman, Figma, Vercel, Cash App, Headspace, Readwise, Brilliant, Mercury, Framer, Dropbox, GitHub, Slack, and Perplexity.

These references inform decisions. Their tokens are not copied into every project. Each product receives a new token set derived from its own brand kit, content, audience, and platform constraints.

## Built-in safeguards

- Light and dark themes are defined from the start.
- Responsive behavior covers compact, standard, and wide surfaces.
- Components include states, content rules, interaction behavior, and accessibility notes.
- Default neutrals use calm near-white and near-black surfaces instead of pure extremes across large regions.
- Loading, empty, error, success, disabled, selected, pressed, focus, overflow, and recovery states are part of the screen contract.
- Image generation uses stable dimensions, aspect ratios, filenames, and locked prompt decisions.
- Generated lettering, logos, UI copy, and geometry are normalized before implementation.
- Public content includes practical SEO guidance without keyword stuffing or unsupported claims.
- Blank-slate design does not inspect an existing project unless the user explicitly asks for an audit or implementation.

## Workflow

1. **Create the brief.** Record the product job, audience, content, platform assumptions, constraints, and success condition.
2. **Create the brand kit.** Generate and review mark, color, type, icon, image, and motion directions.
3. **Specify the system.** Write semantic tokens, component contracts, responsive rules, accessibility requirements, motion, and content guidance.
4. **Map the product.** Choose a realistic screen pack for the product type and cover the primary path plus recovery paths.
5. **Build the screen set.** Produce every screen in map order with a shared prompt contract and locked design direction.
6. **Audit the images.** Compare each image to the system and to the rest of the set. Fix source rules and regenerate affected screens when needed.
7. **Review and hand off.** Resolve remaining drift, then finalize the package for the target stack.

The skill can also be copied directly from [`skills/universal-ui-design/SKILL.md`](skills/universal-ui-design/SKILL.md). The `.codex-plugin/plugin.json` file makes the repository usable as a plugin package.

## Skills

This release contains one end-to-end skill. The install name is the value passed to `--skill`.

| Skill | Install name | Use it for |
| --- | --- | --- |
| Universal UI Design | `universal-ui-design` | Brand kits, design foundations, screen maps, image references, and execution handoffs |

### Operations

The skill uses four focused operations:

| Operation | Purpose |
| --- | --- |
| `create` | Start the product brief, brand kit, design foundation, and screen map |
| `imagegen` | Explore or revise brand and screen references while preserving locked decisions |
| `screen` | Define one screen, its states, responsive behavior, and reference image |
| `build` | Generate the complete screen set, audit it, and write the implementation build plan |
| `review` | Check product fit, consistency, accessibility, responsive behavior, content, motion, and image integrity |

## Example outputs

The repository reserves the same kind of centered image blocks used by established design-skill repositories. The blocks stay commented until accepted assets exist, so the README does not display broken links.

<!-- Uncomment after adding the accepted images. -->
<!--
<div align="center">
  <img src="assets/examples/brand-kit.png" alt="Brand kit example" width="48%" />
  <img src="assets/examples/screen-reference.png" alt="Screen reference example" width="48%" />
  <br /><br />
  <img src="assets/examples/package-overview.png" alt="Final design package example" width="80%" />
</div>
-->

## Output package

Each run writes to a new folder so accepted work is preserved:

The full-screen build produces `reviews/IMAGE-AUDIT.md` and `execution/BUILD-PLAN.md` alongside the design files. Those records show what was checked, what was regenerated, and how the implementation should proceed.

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

## Repository layout

```text
universal-ui-design/
├── .codex-plugin/plugin.json
├── skills/universal-ui-design/SKILL.md
├── commands/             # create, imagegen, screen, build, review
├── references/           # foundations and image-audit rules
├── templates/            # reusable product and audit artifacts
├── evals/                # repository and package checks
├── assets/               # README image slots; no generated examples yet
├── ORIGIN.md             # research path and design rationale
└── LICENSE
```

## Learn more

- [Origin and research path](ORIGIN.md)
- [Research sources](references/sources.md)
- [Skill instructions](skills/universal-ui-design/SKILL.md)
- [Acceptance checklist](evals/acceptance.md)

## Scope

This is a design skill, not a framework starter. It does not generate a design-system HTML file, require a token compiler, or prescribe a frontend stack. The handoff can target web, mobile, desktop, or native UI.

## License

[MIT](LICENSE)
