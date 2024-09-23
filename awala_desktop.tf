module "awala_gateway_desktop" {
  source  = "relaycorp/oss-project/github"
  version = "2.14.1"

  name         = "awala-gateway-desktop"
  description  = "Awala Gateway for Desktop"
  homepage_url = "https://awala.network/users/download"
  licence      = "gplv3"
  topics       = ["awala", "awala-gateway", "windows", "linux", "macos"]
  main_branch  = "master"

  ci_contexts      = ["pr-ci / semantic-pr-title", "ci-ubuntu-latest", "ci-macos-latest", "ci-windows-latest"]
  support_releases = false
  pages_enabled    = false
}

module "awala_ping_desktop" {
  source  = "relaycorp/oss-project/github"
  version = "2.14.1"

  name         = "awala-ping-desktop"
  description  = "Awala Ping for Desktop"
  homepage_url = "https://www.npmjs.com/package/@relaycorp/awala-ping"
  licence      = "gplv3"
  topics       = ["awala", "awala-service-ping", "windows", "linux", "macos"]
  ci_contexts  = ["ci-ubuntu-latest", "ci-macos-latest", "ci-windows-latest"]

  pages_enabled = false
}
