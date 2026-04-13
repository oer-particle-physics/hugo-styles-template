# Hugo Styles Template

This is the thin starter repository for lessons that use the shared `hugo-styles` module.

## What stays here

- lesson-specific content
- lesson metadata in `hugo.toml`
- local branding or small layout overrides
- vendored Hugo module files in `_vendor/` for no-Go local authoring
- GitHub Pages workflow
- Dependabot configuration for module updates

## What stays upstream

- shared layouts
- pedagogy shortcodes
- shared CSS and JS
- aggregated resource pages
- migration and validation tooling

## First steps

1. Update `baseURL`, title, description, contact, and repository links in `hugo.toml`.
   The `params.lesson.repo` value powers the source links and the GitHub icon in the top navigation.
2. Start the site with `hugo server`.
3. Add or replace the sample content.
4. Read the shared docs in the `hugo-styles` repository or on its published site:
   - `docs/quickstart`
   - `docs/authoring`
   - `docs/frontmatter`
   - `docs/components`
   - `docs/deployment`

## Why `_vendor/` is committed

This repository commits `_vendor/` so authors can run local lesson builds without installing Go.
As long as `go.mod`, `go.sum`, and `_vendor/` are in sync, `hugo server` works with Hugo Extended alone.

## Updating shared module versions

### Preferred: GitHub Actions (no local Go required)

Run the **Refresh vendored Hugo modules** workflow from the Actions tab.
It refreshes module metadata and `_vendor/`, then opens a PR if anything changed.

Dependabot still manages `gomod` version discovery and can trigger update PRs on its normal schedule.

### Local maintainer path (Go available)

```bash
hugo mod tidy
hugo mod vendor
hugo --gc --minify
```

If you want to move to the latest release first:

```bash
hugo mod get -u github.com/oer-particle-physics/hugo-styles@latest
hugo mod tidy
hugo mod vendor
```

Commit these files together:

- `go.mod`
- `go.sum`
- `_vendor/`

For local co-development with a sibling `hugo-styles` checkout, use a temporary local `replace` or `go.work`
setup while testing, but do not commit that override to the template repository.
