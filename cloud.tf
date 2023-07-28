locals {
  cloud_gateways = {
    frankfurt : "gw-frankfurt-4065"
  }
}

module "cloud_gateway" {
  source  = "relaycorp/oss-project/github"
  version = "2.11.0"

  name         = "cloud-gateway"
  description  = "Infrastructure as Code and configuration for all Awala-Internet Gateways run by Relaycorp"
  homepage_url = ""
  licence      = "agpl"
  topics       = ["awala", "awala-gateway", "cloud"]

  ci_contexts = flatten([
    ["ci / ci", "Terraform Cloud/Relaycorp/cloud-gateway"],
    [for k, v in local.cloud_gateways : "Terraform Cloud/Relaycorp/gateway-${k}"],
    [for k, v in local.cloud_gateways : "gateway-gke-deployment-preview (${v})"],
  ])
  support_releases = false
}
