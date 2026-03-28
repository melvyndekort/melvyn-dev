# melvyn-dev

> For global standards, way-of-workings, and pre-commit checklist, see `~/.kiro/steering/behavior.md`

## Role

Web developer and DevOps engineer.

## What This Does

Personal CV website built with Hugo (Go-based static site generator) using the Almeida CV theme. Deployed to Cloudflare Pages.

## Repository Structure

- Root — Hugo site (config.toml, data/, static/, assets/, themes/)
- `terraform/` — Cloudflare Pages project, DNS
- `package.json` — npm dependencies for Hugo asset pipeline
- `go.mod` / `go.sum` — Hugo module dependencies
- `Makefile` — `init`, `plan`, `apply`, `serve`

## Terraform Details

- Backend: S3 key in `mdekort-tfstate-075673041815`
- Secrets: KMS context (via Cloudflare API token from remote state)

## CI/CD

Two workflows: `publish-site.yml` (Hugo build → Cloudflare Pages deploy) and `terraform.yml`

## Related Repositories

- `~/src/melvyndekort/tf-cloudflare` — DNS and API tokens
