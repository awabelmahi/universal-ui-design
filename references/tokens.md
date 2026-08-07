# Tokens

Tokens are the contract between the accepted design and implementation. Define values once, name them by meaning, and use the same names across screens.

## Token layers

Use three layers:

1. **Source values**: brand colors, type family, spacing steps, dimensions, and motion values derived from the brief and brand kit.
2. **Semantic roles**: what a value means, such as `surface.canvas`, `content.primary`, or `border.focus`.
3. **Component roles**: how a component consumes a semantic role, such as `button.primary.background`.

Do not use a raw color or one-off spacing value directly in a screen when a semantic role exists. Do not create a component token when the semantic role is already precise enough.

## Default token baseline

Adjust these values only with a recorded reason. The baseline uses a 4-unit rhythm and comfortable density.

### Spacing and sizing

| Token | Default | Use |
| --- | ---: | --- |
| `space.1` | 4 | Icon gap, compact internal spacing |
| `space.2` | 8 | Tight grouping, control gap |
| `space.3` | 12 | Text-to-control gap, list row inset |
| `space.4` | 16 | Default component padding and page gutter |
| `space.5` | 20 | Comfortable control padding |
| `space.6` | 24 | Section gap and card padding |
| `space.8` | 32 | Group separation |
| `space.10` | 40 | Major block separation |
| `space.12` | 48 | Page section spacing |
| `space.16` | 64 | Hero or major region spacing |
| `space.20` | 80 | Large landing-page separation |
| `size.control` | 40–44 | Default control height; increase for touch-heavy surfaces |
| `size.icon` | 16–24 | Use one size per context, not a random mix |
| `size.content-max` | 1200–1280 | Wide reading or application container |

### Radius and depth

| Token | Default | Use |
| --- | ---: | --- |
| `radius.sm` | 8 | Small controls and compact surfaces |
| `radius.md` | 12 | Default control or card |
| `radius.lg` | 16 | Larger panel or featured surface |
| `radius.xl` | 20 | Rare, intentional hero or sheet |
| `radius.full` | 999 | Circular controls or a true pill status |
| `elevation.1` | Subtle surface separation | Raised control or card |
| `elevation.2` | Clear but soft | Popover, menu, dialog |
| `elevation.3` | Strong separation | Temporary layer over complex content |

Choose one primary radius and one supporting radius for the product. Do not make every surface rounded by default.

### Semantic color roles

Define both themes. A dark theme is not a raw inversion of light values.

| Role | Light theme intent | Dark theme intent |
| --- | --- | --- |
| `surface.canvas` | Main page background | Main page background with controlled luminance |
| `surface.raised` | Card, popover, or dialog surface | Raised layer with enough separation from canvas |
| `surface.inset` | Input, table, or secondary region | Recessed region without losing boundaries |
| `content.primary` | Main readable text | Main readable text |
| `content.secondary` | Supporting text | Supporting text with tested contrast |
| `content.tertiary` | Metadata and hint text | Metadata only when contrast remains sufficient |
| `content.on-accent` | Text on accent fill | Text on accent fill |
| `border.subtle` | Quiet structural boundary | Quiet structural boundary |
| `border.strong` | Deliberate boundary | Deliberate boundary |
| `border.focus` | Keyboard focus indicator | Keyboard focus indicator |
| `action.accent` | Primary action and selected state | Primary action and selected state |
| `action.accent-hover` | Hover feedback | Hover feedback |
| `action.accent-pressed` | Pressed feedback | Pressed feedback |
| `status.success` | Positive outcome | Positive outcome |
| `status.warning` | Attention needed | Attention needed |
| `status.danger` | Destructive or failed state | Destructive or failed state |
| `status.info` | Informational state | Informational state |
| `overlay.scrim` | Modal background veil | Modal background veil |

Every status color needs a text, icon, or shape cue. Never use color alone.

### Default neutral baseline

Use this as the starting surface direction when the brand kit does not establish a different neutral. These values are intentionally close to familiar light and dark product surfaces. They avoid pure white and pure black across large regions without turning neutrality into a visual gimmick.

| Role | Light default | Dark default | Notes |
| --- | --- | --- | --- |
| `surface.canvas` | `#F7F7F5` | `#181817` | Main application or page background |
| `surface.raised` | `#FCFCFB` | `#20201F` | Card, panel, popover, or dialog |
| `surface.inset` | `#F0F0EE` | `#121211` | Input, table, or recessed region |
| `content.primary` | `#1C1C1B` | `#F2F2EF` | Main text and icon color |
| `content.secondary` | `#6D6D68` | `#A7A7A0` | Supporting text; verify on every surface |
| `content.tertiary` | `#85857F` | `#85857F` | Metadata only when contrast passes |
| `border.subtle` | `#E3E3E0` | `#353533` | Quiet structural boundary |
| `border.strong` | `#C9C9C5` | `#4A4A47` | Deliberate boundary or control edge |

Do not copy these values into every product without checking the brand kit. They are a sane neutral baseline for a new product, not a claim that every product should look identical. Reserve pure black and pure white for cases that need them, such as a mark, an image, or an explicit brand decision.

### Borders and focus

- Use a border when structure must remain visible without elevation.
- Use a focus token that is visible on every relevant surface.
- Keep disabled states visually distinct without making their text unreadable.
- Test accent, status, text, and focus roles against every surface they touch.

### Layering

Use a small ordered set: base content, sticky navigation, popover, dialog, toast, and system-level notice. Give every temporary layer an escape path and a focus rule.

## Token naming

Use stable, semantic names in lower-case dot notation in Markdown examples:

```text
surface.canvas
content.primary
action.accent
button.primary.background
field.default.border
motion.duration.fast
```

The target implementation may translate the names. The design package must keep the meaning stable.

## Token quality gate

Before handoff, confirm:

- No screen invents a color, spacing, radius, or shadow without a recorded exception.
- Light and dark roles are both populated.
- Every component role maps to a semantic role.
- Contrast has been checked for text, icons, boundaries, status, and focus.
- Values remain legible with long content and large text.
- Product-specific values were derived from the brand kit instead of copied from a reference product.
