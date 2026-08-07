$ErrorActionPreference = 'Stop'

$repoRoot = Split-Path -Parent $PSScriptRoot
$required = @(
  '.codex-plugin/plugin.json',
  'README.md',
  'ORIGIN.md',
  'skills/universal-ui-design/SKILL.md',
  'commands/create.md',
  'commands/imagegen.md',
  'commands/build.md',
  'commands/screen.md',
  'commands/review.md',
  'references/accessibility.md',
  'references/anti-slop.md',
  'references/brand-kit.md',
  'references/components.md',
  'references/content-seo.md',
  'references/imagegen.md',
  'references/image-audit.md',
  'references/interaction.md',
  'references/layout.md',
  'references/motion.md',
  'references/principles.md',
  'references/responsive.md',
  'references/screen-map.md',
  'references/sources.md',
  'references/tokens.md',
  'references/typography.md',
  'templates/BRAND-KIT.md',
  'templates/BUILD-PLAN.md',
  'templates/DESIGN.md',
  'templates/IMAGE-AUDIT.md',
  'templates/PRODUCT.md',
  'templates/SCREEN-MAP.md',
  'templates/SCREEN.md',
  'evals/acceptance.md'
)

$missing = @($required | Where-Object { -not (Test-Path (Join-Path $repoRoot $_)) })
if ($missing.Count -gt 0) {
  $missing | ForEach-Object { Write-Error "Missing required file: $_" }
  exit 1
}

$manifest = Get-Content -Raw -LiteralPath (Join-Path $repoRoot '.codex-plugin/plugin.json') | ConvertFrom-Json
if ($manifest.name -ne 'universal-ui-design') { throw 'Unexpected plugin name.' }
if ($manifest.skills -ne './skills/') { throw 'Plugin must expose the skills directory.' }
if (-not $manifest.interface.defaultPrompt -or $manifest.interface.defaultPrompt.Count -gt 3) { throw 'Plugin starter prompts are missing or exceed the supported limit.' }

$skill = Get-Content -Raw -LiteralPath (Join-Path $repoRoot 'skills/universal-ui-design/SKILL.md')
if ($skill -notmatch '(?m)^name: universal-ui-design$') { throw 'Skill frontmatter name is missing.' }
if ($skill -notmatch '(?m)^description: .+') { throw 'Skill frontmatter description is missing.' }

$readme = Get-Content -Raw -LiteralPath (Join-Path $repoRoot 'README.md')
foreach ($requiredText in @('npx skills add', 'Example outputs', 'image generation', 'light and dark', 'Build and audit', 'image audit')) {
  if ($readme -notmatch [regex]::Escape($requiredText)) { throw "README is missing: $requiredText" }
}

$allMarkdown = Get-ChildItem -Path $repoRoot -Recurse -File -Filter '*.md' | Get-Content -Raw
if ($allMarkdown -match '\[TODO\]|\[TBD\]|lorem ipsum') { throw 'Unresolved placeholder text found.' }

Write-Output "Universal UI Design repository check passed: $($required.Count) required files present."
