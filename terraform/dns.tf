data "cloudflare_zones" "zone" {
  filter {
    name = "melvyn.dev"
  }
}

resource "cloudflare_record" "apex" {
  zone_id = data.cloudflare_zones.zone.zones[0].id
  name    = var.domain_name
  type    = "CNAME"
  ttl     = 1
  proxied = false
  value   = "apex-loadbalancer.netlify.com"
}

resource "cloudflare_record" "aliasses" {
  for_each = toset(var.domain_aliasses)

  zone_id = data.cloudflare_zones.zone.zones[0].id
  name    = each.key
  type    = "CNAME"
  ttl     = 1
  proxied = false
  value   = "${var.name}.netlify.app"
}
