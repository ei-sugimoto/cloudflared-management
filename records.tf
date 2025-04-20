resource "cloudflare_record" "homek8s" {
  zone_id = data.cloudflare_zone.target.id
  name    = "homek8s.ei-sugimoto.uk"
  type    = "CNAME"
  content = "6a764082-2dd0-4cad-bd23-453fcd860d18.cfargotunnel.com"
  ttl     = 1
  proxied = true
}

resource "cloudflare_record" "pages" {
  zone_id = data.cloudflare_zone.target.id
  name    = "pages.ei-sugimoto.uk"
  type    = "CNAME"
  content = "cname.vercel-dns.com"
  ttl     = 3600
  proxied = false
}

resource "cloudflare_record" "vercel_verify" {
  zone_id = data.cloudflare_zone.target.id
  name    = "_vercel.ei-sugimoto.uk"
  type    = "TXT"
  content = "\"vc-domain-verify=pages.ei-sugimoto.uk,7610920677c80d696eff,dc\""
  ttl     = 3600
  proxied = false
}

