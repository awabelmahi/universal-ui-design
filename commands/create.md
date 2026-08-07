# Create

Use this command for a new product or a blank-slate design system.

## Read

1. `skills/universal-ui-design/SKILL.md`
2. `references/principles.md`
3. `references/tokens.md`
4. `references/typography.md`
5. `references/layout.md`
6. `references/components.md`
7. `references/accessibility.md`
8. `references/responsive.md`
9. `references/interaction.md`
10. `references/motion.md`
11. `references/brand-kit.md`
12. `references/screen-map.md`
13. `references/content-seo.md` when the product includes a public or marketing surface

## Sequence

### A. Brief

Create `PRODUCT.md`. Identify the product type, primary task, audience, platform assumptions, content model, and success condition. Pick the closest default screen pack from `references/screen-map.md`.

### B. Brand kit

Create `BRAND-KIT.md`. Generate a brand board with mark directions, color and surface directions, type direction, and image direction. Generate variants only for unresolved choices. Do not start screen generation before one direction is accepted.

### C. Foundation

Create `DESIGN.md`. Define semantic light and dark color roles, type roles, spacing, layout, radius, elevation, motion, component contracts, and accessibility checks. Use product-specific values derived from the accepted brand direction.

### D. Screen map

Create `SCREEN-MAP.md`. Map the realistic first product surface. Include screen purpose, entry, exit, navigation, primary action, states, responsive change, and content requirements.

### E. Handoff

Create `DECISIONS.md`, `CONTENT-PLAN.md`, and `ASSET-MANIFEST.md` as soon as they contain useful decisions. Keep the output folder organized and preserve all accepted source images.

## Stop conditions

Stop before screen generation if the brand direction is not accepted, the primary task is unclear, the semantic color roles are not defined for both themes, or the screen map has no state coverage.
