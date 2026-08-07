# Origin

## The problem

Agentic UI generation can produce a convincing first screen and still fail as a product. Common failures include a beautiful hero with no real flow, copied tokens that drift across screens, no light or dark parity, missing loading and error states, weak mobile behavior, inaccessible controls, unstable image-generated text, and marketing copy that sounds polished but says little.

The issue is not a lack of visual ideas. The issue is that the visual idea is rarely converted into a durable set of decisions before implementation begins.

## The research path

This project follows a simple path:

1. Observe the gap between image quality and system consistency.
2. Study products with reliable interaction grammar: Apple and Linear first, then Stripe, Notion, Airbnb, Arc, Spotify, Superhuman, Figma, Vercel, Cash App, Headspace, Readwise, Brilliant, Mercury, Framer, Dropbox, GitHub, Slack, and Perplexity.
3. Study design-skill repositories such as Taste, Impeccable, UI/UX Pro Max, VibeCurb, Anthropic skills, and Superpowers to understand how agents read staged instructions.
4. Study accessibility and content guidance from WCAG and Google Search Central.
5. Keep the useful structure: progressive disclosure, concrete tables, repeatable commands, decision logs, and acceptance checks.
6. Reject the parts that create generic output: style catalogs without product judgment, copied token presets, image-only handoffs, and framework-specific assumptions.
7. Test the resulting package against the question: could another agent build the interface without inventing missing behavior?

## What makes this different

### Image-first, system-led

Image generation starts the visual conversation. It does not become the source of truth. The accepted direction is normalized into brand rules, semantic tokens, component contracts, states, responsive changes, motion, and content.

### Familiar by default

Apple provides the foundational interaction quality. Linear provides product discipline and clarity. Other references are selected for the problem they solve, not blended into an average aesthetic.

### Product-specific values

The skill has defaults for neutral surfaces, spacing, type, motion, and density. Those defaults are starting points. The actual token values are derived from the product's brand kit and recorded in its `DESIGN.md`; another product's token set is never silently reused.

### Complete states

The process accounts for loading, empty, error, success, disabled, selected, pressed, focus, overflow, and recovery. It also covers light, dark, compact, standard, and wide behavior.

### Practical handoff

The result is a small, readable package. It is not a framework starter and it does not require a token compiler. An implementation agent can consume the Markdown, images, asset manifest, and decisions in the target stack of choice.

## How the project should evolve

Add a rule when a repeated failure appears. Add a reference when it contributes a clearly named decision. Add a token only when a semantic role is missing. Keep the package small enough that an agent can load the right part at the right stage.
