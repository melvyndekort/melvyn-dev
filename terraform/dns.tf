resource "cloudflare_record" "apex" {
  zone_id = data.terraform_remote_state.cloudsetup.outputs.melvyn_dev_zone_id
  name    = "@"
  type    = "CNAME"
  ttl     = 300
  value   = "apex-loadbalancer.netlify.com"
}

resource "cloudflare_record" "www" {
  zone_id = data.terraform_remote_state.cloudsetup.outputs.melvyn_dev_zone_id
  name    = "www"
  type    = "CNAME"
  ttl     = 300
  value   = "apex-melvyn-dev.netlify.app"
}
