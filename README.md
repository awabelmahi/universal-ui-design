# Universal UI Design

<!-- Uncomment this block after adding assets/header.png. -->
<!--
<p align="center">
  <img src="assets/header.png" alt="Universal UI Design" width="100%" />
</p>
-->

Framework-agnostic design guidance for AI agents. It uses image generation to establish a strong visual direction, then turns that direction into a coherent, accessible design system and screen package.

## Why this exists

Most AI-generated interfaces converge on familiar templates. The result may be functional, but it often has weak hierarchy, copied visual patterns, missing states, inconsistent screens, and little product judgment.

Image models are often better at exploring composition and visual direction than a coding agent working from a vague prompt. Universal UI Design uses that strength at the beginning of the process. It then normalizes the accepted direction into tokens, components, content rules, responsive behavior, accessibility requirements, motion, and screen references that an implementation agent can reproduce.

The image is the starting point. The written design package is the source of truth.

## What it does

| Stage | Output | Purpose |
| --- | --- | --- |
| Brand | Brand board, mark directions, color and type direction | Establish a visual language before screens |
| Foundation | Product-specific tokens, typography, layout, components, states | Make the visual language repeatable |
| Mapping | Realistic screen map and navigation model | Define the product surface instead of inventing isolated screens |
| References | Light, dark, compact, standard, and wide screen images | Explore and communicate the approved direction |
| Review | Accessibility, responsive, content, motion, and anti-slop audit | Catch inconsistencies before implementation |
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
5. **Generate references.** Produce focused light, dark, and responsive references while keeping approved decisions locked.
6. **Review and hand off.** Resolve systemic drift in `DESIGN.md`, then finalize the package for the target stack.

## Install

Install the skill with the portable skills CLI:

```bash
npx skills add https://github.com/awabelmahi08-design/universal-ui-design --skill universal-ui-design
```

For Codex, the explicit agent form is also supported:

```bash
npx skills add https://github.com/awabelmahi08-design/universal-ui-design --skill universal-ui-design --agent codex
```

The skill can also be copied directly from [`skills/universal-ui-design/SKILL.md`](skills/universal-ui-design/SKILL.md). The `.codex-plugin/plugin.json` file makes the repository usable as a plugin package.

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
├── commands/             # create, imagegen, screen, review
├── references/           # foundations loaded by stage
├── templates/            # reusable product artifacts
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
