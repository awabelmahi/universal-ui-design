# Review

Use this command before handing the package to an implementation agent.

## Read

1. `skills/universal-ui-design/SKILL.md`
2. `references/anti-slop.md`
3. `references/accessibility.md`
4. `references/responsive.md`
5. `references/interaction.md`
6. `references/motion.md`
7. `references/content-seo.md` for public pages
8. `DESIGN.md`, `SCREEN-MAP.md`, and the supplied screen records

## Review order

### 1. Product fit

Confirm that the screens serve the product job, use the product's real nouns, and cover the primary path plus recovery paths.

### 2. System fit

Compare screens against the semantic token table and component contracts. Find repeated drift in the source rule instead of patching individual screens.

### 3. Access and states

Check contrast, focus, keyboard or platform navigation, labels, error recovery, status announcements, touch targets, reduced motion, and every important state.

### 4. Responsive behavior

Check compact, standard, and wide layouts. Confirm that hierarchy, navigation, tables, dialogs, and actions change intentionally rather than merely shrinking.

### 5. Content and search

For public surfaces, check page intent, title, description, heading, link text, image alternatives, URL, internal links, and any structured data against `references/content-seo.md`. Do not add search terms that make copy unnatural.

### 6. Visual quality

Reject arbitrary decoration, inconsistent radii, mixed density, unexplained badges, excessive cards, generic placeholder copy, and image-generated artifacts.

## Report

Write `reviews/<date>-review.md` with:

| Severity | Meaning | Action |
| --- | --- | --- |
| Blocker | Prevents a user from completing a core task or makes the package unsafe to implement | Fix before handoff |
| High | Systemic accessibility, responsive, state, or consistency issue | Fix before handoff |
| Medium | Meaningful clarity or polish issue | Fix or record an explicit decision |
| Low | Optional refinement | Defer unless it affects the system |

End with a clear verdict: `ready`, `ready with recorded deferrals`, or `not ready`.
