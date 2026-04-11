# Hugo Styles Template

This is the thin starter repository for lessons that use the shared `hugo-styles` module.

## What stays here

- lesson-specific content
- lesson metadata in `hugo.toml`
- local branding or small layout overrides
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
5. Once `hugo-styles` has a published release, pin it with:

```bash
hugo mod get github.com/oer-particle-physics/hugo-styles@latest
hugo mod tidy
```

## Updating the lesson later

When a new `hugo-styles` release is available:

```bash
hugo mod get -u github.com/oer-particle-physics/hugo-styles@latest
hugo mod tidy
go run github.com/oer-particle-physics/hugo-styles/cmd/hugo-styles-migrate@latest check .
hugo
```

If Dependabot is enabled, most of those updates should arrive as pull requests instead.

For local co-development with a sibling `hugo-styles` checkout, use a temporary local `replace` or `go.work`
setup while testing, but do not commit that override to the template repository.
