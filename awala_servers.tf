module "awala_internet_gateway" {
  source  = "relaycorp/oss-project/github"
  version = "2.4.1"

  name         = "relaynet-internet-gateway"
  description  = "The Awala-Internet Gateway"
  homepage_url = "https://docs.relaycorp.tech/relaynet-internet-gateway/"
  licence      = "agpl"
  topics       = ["awala", "awala-gateway"]
  ci_contexts  = ["ci / ci"]
  main_branch  = "master"

  pages_source_path   = "/docs"
  pages_source_branch = "master"
}

module "awala_pong" {
  source  = "relaycorp/oss-project/github"
  version = "2.4.1"

  name         = "relaynet-pong"
  description  = "Awala Ping Service Application (pong messages only)"
  homepage_url = "https://docs.relaycorp.tech/relaynet-pong/"
  licence      = "agpl"
  topics       = ["awala", "awala-service-ping"]
  ci_contexts  = ["ci / ci"]
  main_branch  = "master"

  pages_source_path   = "/docs"
  pages_source_branch = "master"
}
