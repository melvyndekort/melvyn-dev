resource "netlify_site" "melvyn-dev" {
  name = "melvyn-dev"

  repo {
    repo_branch = "main"
    dir         = "src"
    provider    = "github"
    repo_path   = "melvyndekort/melvyn-dev"
  }
}
