module "despacito_website" {
  source  = "relaycorp/oss-project/github"
  version = "2.13.3"

  name         = "despacito-website"
  description  = "Website for Despacito, a DDoS protection protocol"
  homepage_url = "https://despacito.bot"
  licence      = "CC-BY-SA-4.0"
  topics       = ["ddos"]
}