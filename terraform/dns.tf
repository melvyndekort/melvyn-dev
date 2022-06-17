data "cloudflare_zone" "melvyn_dev" {
  name = "melvyn.dev"
}

resource "cloudflare_record" "apex" {
  zone_id = data.cloudflare_zone.melvyn_dev.id
  name    = ""
  type    = "CNAME"
  ttl     = "300"
  value   = "apex-loadbalancer.netlify.com"
}

resource "cloudflare_record" "www" {
  zone_id = data.cloudflare_zone.melvyn_dev.id
  name    = ""
  type    = "CNAME"
  ttl     = "300"
  value   = "apex-melvyn-dev.netlify.app"
}
