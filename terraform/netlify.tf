resource "netlify_site" "melvyn-dev" {
  name = "melvyn-dev"

  repo {
    repo_branch   = "main"
    dir           = "src"
    provider      = "github"
    repo_path     = "melvyndekort/melvyn-dev"
    custom_domain = "melvyn.dev"
    cdp_enabled   = true
    build_image   = "focal"
  }
}
