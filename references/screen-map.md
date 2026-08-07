# Screen map

The screen map turns a product idea into a believable first surface. The default packs are starting assumptions. Increase them when the product needs a real flow.

## Default packs

| Product type | Starting pack | Typical screens |
| --- | ---: | --- |
| General product | 10 | Welcome, home, list, detail, create/edit, search, activity, settings, help, recovery |
| Consumer mobile | 10 | Onboarding, home, browse, detail, create, notifications, profile, search, settings, empty/error |
| SaaS workspace | 12 | Sign in, onboarding, home, project/list, detail, create, search, command menu, activity, members, settings, billing |
| Dashboard or operations | 14 | Overview, detail, table, filters, search, create, edit, bulk action, import, export, alerts, activity, settings, recovery |
| AI or creator tool | 12 | Welcome, workspace, input, generation, result, history, detail, edit, share, usage, settings, failure/retry |
| Learning or content | 12 | Onboarding, home, browse, lesson/detail, session, progress, review, search, saved, profile, settings, empty/error |
| Commerce or transaction | 14 | Home, browse, search, detail, options, cart, checkout, payment, confirmation, order detail, account, support, empty/error |
| Social or community | 12 | Onboarding, feed, explore, detail, compose, comments, notifications, messages, profile, settings, moderation, empty/error |
| Marketing site | 7–9 sections | Navigation, hero, proof, product explanation, use cases, pricing, FAQ, CTA, footer |

## Selection rules

- Start with the primary task and the state after completion.
- Include the first-run path and the returning-user path when they differ.
- Include the main collection, the main detail view, and the main create or edit path when the product has them.
- Include search or browse when discovery is core.
- Include settings, permissions, billing, support, or recovery when the product depends on them.
- Include loading, empty, error, and success states in the relevant screen record. They do not always need separate image files.
- Include a screen for a significant irreversible or high-trust action.
- Use a realistic count. Do not stop at the smallest possible set just to reduce work.

## Screen record

Every screen entry names:

- ID and title.
- User job.
- Entry points.
- Main content and content hierarchy.
- Primary, secondary, and destructive actions.
- Navigation region.
- State matrix.
- Compact, standard, and wide behavior.
- Light and dark changes.
- Accessibility notes.
- Content and SEO notes when public.
- Image reference and acceptance status.

## Navigation placement

Choose navigation from frequency and task continuity:

- High-frequency destinations belong in the persistent primary navigation.
- Contextual tools belong near the content they affect.
- Low-frequency tools belong in a predictable overflow, sheet, or settings area.
- Bottom navigation is appropriate only when a small set of destinations is repeatedly used on compact surfaces.
- A side rail is useful when users compare, filter, or move among many work areas.
