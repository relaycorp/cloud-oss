module "awala_internet_gateway" {
  source  = "relaycorp/oss-project/github"
  version = "2.2.0"

  name         = "relaynet-internet-gateway"
  description  = "The Awala-Internet Gateway"
  homepage_url = "https://docs.relaycorp.tech/relaynet-internet-gateway/"
  licence      = "agpl"
  topics       = ["awala", "awala-gateway"]
  ci_contexts  = ["ci"]
  main_branch  = "master"

  pages_source_path   = "/docs"
  pages_source_branch = "master"
}
