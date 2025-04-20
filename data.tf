variable "cloudflare_zone_name" {
  type    = string
  default = "ei-sugimoto.uk"
}

data "cloudflare_zone" "target" {
  name = var.cloudflare_zone_name
}
