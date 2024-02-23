module "ddos_report" {
  source  = "relaycorp/oss-project/github"
  version = "2.13.0"

  name         = "ddos-report"
  description  = "The DDoS Report"
  homepage_url = "https://ddos.report"
  licence      = "CC-BY-SA-4.0"
  topics       = ["ddos"]

  support_discussions = true
}
