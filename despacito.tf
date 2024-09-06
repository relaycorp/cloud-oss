module "despacito_website" {
  source  = "relaycorp/oss-project/github"
  version = "2.14.0"

  name         = "despacito-website"
  description  = "Website for Despacito, a DDoS protection protocol"
  homepage_url = "https://despacito.bot"
  licence      = "CC-BY-SA-4.0"
  topics       = ["ddos"]

  ci_contexts = ["Cloudflare Pages: despacito", "ci / test"]

  support_discussions = true
  support_releases    = false
}
