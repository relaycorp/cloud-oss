locals {
  cloud_gateway_envs = ["frankfurt"]
}

module "cloud_gateway" {
  source  = "relaycorp/oss-project/github"
  version = "2.6.0"

  name         = "cloud-gateway"
  description  = "Infrastructure as Code and configuration for all Awala-Internet Gateways run by Relaycorp"
  homepage_url = ""
  licence      = "agpl"
  topics       = ["awala", "awala-gateway", "cloud"]

  ci_contexts = flatten([
    ["ci / ci", "Terraform Cloud/Relaycorp/cloud-gateway"],
    [for env in local.cloud_gateway_envs : "Terraform Cloud/Relaycorp/gateway-${env}"],
    [for env in local.cloud_gateway_envs : "gateway-${env}-gke-deployment-preview (relaycorp-cloud-gateway)"],
  ])
  support_releases = false
}
