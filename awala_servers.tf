module "awala_internet_gateway" {
  source  = "relaycorp/oss-project/github"
  version = "2.13.0"

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
  version = "2.13.0"

  name        = "awala-pong"
  description = "Awala Ping Service Application (pong messages only)"
  licence     = "agpl"
  topics      = ["awala", "awala-service-ping"]
  ci_contexts = ["ci / ci"]
  main_branch = "master"
}

module "awala_endpoint_internet" {
  source  = "relaycorp/oss-project/github"
  version = "2.13.0"

  name         = "awala-endpoint-internet"
  description  = "Middleware for server-side apps to communicate over Awala without implementing any of the networking or cryptography from the protocol suite."
  homepage_url = "https://docs.relaycorp.tech/awala-endpoint-internet/"
  licence      = "agpl"
  topics       = ["awala", "awala-endpoint"]
  ci_contexts  = ["ci / ci"]

  pages_source_path   = "/docs"
  pages_source_branch = "main"
}

module "awala_endpoint_internet_js" {
  source  = "relaycorp/oss-project/github"
  version = "2.13.0"

  name        = "awala-endpoint-internet-js"
  description = "High-level JS library to process Awala Internet Endpoint-compatible CloudEvents"
  licence     = "mit"
  topics      = ["awala", "awala-endpoint"]
  ci_contexts = local.nodejs_lib_ci_contexts
}

module "awala_endpoint_internet_tf_gcp" {
  source  = "relaycorp/oss-project/github"
  version = "2.13.0"

  name         = "terraform-google-awala-endpoint"
  description  = "Terraform module to manage an instance of the Awala Internet Endpoint on GCP."
  homepage_url = "https://registry.terraform.io/modules/relaycorp/awala-endpoint/google"
  licence      = "agpl"
  topics       = ["awala", "awala-endpoint", "terraform", "gcp"]
  ci_contexts  = ["ci-module / ci", "ci-example / ci"]
}
