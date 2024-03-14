module "ddos_report" {
  source  = "relaycorp/oss-project/github"
  version = "2.13.3"

  name         = "ddos-report"
  description  = "The DDoS Report"
  homepage_url = "https://ddos.report"
  licence      = "CC-BY-SA-4.0"
  topics       = ["ddos", "botnets"]

  ci_contexts = ["Cloudflare Pages: ddos-report", "ci / test"]

  support_discussions = true
  support_releases    = false
}
