locals {
  cloud_gateways = ["belgium"]
}

module "cloud_gateway" {
  source  = "relaycorp/oss-project/github"
  version = "2.14.0"

  name         = "cloud-gateway"
  description  = "Infrastructure as Code and configuration for all Awala-Internet Gateways run by Relaycorp"
  homepage_url = ""
  licence      = "agpl"
  topics       = ["awala", "awala-gateway", "cloud"]

  ci_contexts = flatten([
    ["ci-main / ci", "Terraform Cloud/Relaycorp/cloud-gateway"],
    [for name in local.cloud_gateways : "ci-${name} / ci"],
    [for name in local.cloud_gateways : "Terraform Cloud/Relaycorp/gateway-${name}"],
  ])
  support_releases = false
}
