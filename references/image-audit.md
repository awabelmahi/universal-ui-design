# Image audit

An image set is useful only when it is coherent enough to guide implementation. Audit images against the written design system and against one another. Do not judge a screen by whether it looks attractive in isolation.

## Audit inputs

Read all of these before reviewing an image:

- `BRAND-KIT.md`
- `DESIGN.md`
- `SCREEN-MAP.md`
- The screen's `SCREEN.md`
- `DECISIONS.md`
- The image manifest entry

The written files define the intended behavior. The image is evidence of how well the direction was expressed.

## Audit layers

### 1. Set consistency

Compare the screen with the other screens at the same frame class.

- Is the shell in the same place?
- Are the page gutters, content max, navigation, and primary action treatment consistent?
- Do type roles, control heights, radii, borders, shadows, and icon sizes repeat correctly?
- Do light and dark themes use the same semantic roles?
- Does density change only when the task requires it?

### 2. System adherence

Check each visible decision against `DESIGN.md`:

- Type family, role, weight, size, and line height.
- Semantic surface, content, border, action, and status roles.
- Spacing steps and alignment lines.
- Radius, border, elevation, and layer rules.
- Component anatomy, variant, and state.
- Motion cue and reduced-motion alternative when motion is shown.

If a value is not in the design system, classify it as a drift issue. Do not silently add a new token because the image contains it.

### 3. Product structure

Check whether the screen expresses the real task:

- Is the user's job obvious?
- Is the information hierarchy correct?
- Is navigation placed according to frequency and context?
- Does the primary action sit near the content it changes?
- Are supporting and destructive actions separated?
- Does the screen lead to the correct next state?

An attractive screen with the wrong structure fails this layer.

### 4. State completeness

Check the states named by the screen record. At minimum, consider default, loading, empty, error, success, disabled, selected, pressed, focus, overflow, and recovery where relevant.

Do not require a separate image for every state. Require a written state contract and a visual reference for states that change layout, hierarchy, or trust.

### 5. Accessibility and responsive behavior

- Contrast and focus must be plausible on the intended surfaces.
- Color must not be the only state signal.
- Labels, reading order, and control affordances must be clear.
- Compact behavior must preserve task priority and action reachability.
- Long content, missing content, and error content must have room to exist.
- Dark mode must not be a recolored afterthought.

### 6. Image integrity

Check for unstable generated artifacts:

- Incorrect or inconsistent lettering.
- Fake controls, impossible text, broken icons, or invented logos.
- Misaligned repeated elements.
- Inconsistent crop, aspect ratio, or image treatment.
- Decorative detail that competes with the task.

Keep the composition when it is useful. Replace unreliable image artifacts with written copy, real assets, and implementation-native components.

## Severity

| Severity | Meaning | Fix |
| --- | --- | --- |
| Blocker | Wrong task structure, missing primary flow, inaccessible core action, or unusable state | Change the system or screen before handoff |
| High | Repeated token drift, wrong navigation, broken responsive behavior, or major image artifact | Fix at the source and regenerate affected screens |
| Medium | Local spacing, copy, crop, or hierarchy issue | Fix if it affects a repeated pattern; otherwise record it |
| Low | Minor polish issue with no system impact | Defer or correct during implementation |

## Fix order

1. Fix product structure and task order.
2. Fix shared tokens or component contracts.
3. Fix the prompt lock and regenerate the affected image.
4. Fix screen-specific content or layout.
5. Normalize unreliable image details in the written handoff.

Do not patch the same drift separately in ten images. Find the shared source.

## Audit record

For each finding, record:

| Screen | Layer | Finding | Severity | Source rule | Action | Status |
| --- | --- | --- | --- | --- | --- | --- |
|  |  |  |  |  |  |  |

End the set-level audit with the screens reviewed, systemic changes made, remaining deferrals, and a clear verdict.
