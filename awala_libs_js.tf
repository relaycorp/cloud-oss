locals {
  lib_js_ci_contexts = [
    "ci-nodejs10-ubuntu-latest",
    "ci-nodejs10-windows-latest",
    "ci-nodejs10-macos-latest",
    "ci-nodejs12-ubuntu-latest",
    "ci-nodejs12-windows-latest",
    "ci-nodejs12-macos-latest",
  ]

  lib_nodejs_v12_to_v14_ci_contexts = [
    "ci-nodejs12-ubuntu-latest",
    "ci-nodejs12-windows-latest",
    "ci-nodejs12-macos-latest",
    "ci-nodejs14-ubuntu-latest",
    "ci-nodejs14-windows-latest",
    "ci-nodejs14-macos-latest",
  ]

  lib_js_active_nodejs_ci_contexts = concat([
    "ci-nodejs10-ubuntu-latest",
    "ci-nodejs10-windows-latest",
    "ci-nodejs10-macos-latest",
  ], local.lib_nodejs_v12_to_v14_ci_contexts)

  lib_nodejs_v12_to_v16_ci_contexts = concat(local.lib_nodejs_v12_to_v14_ci_contexts, [
    "ci-nodejs16-ubuntu-latest",
    "ci-nodejs16-windows-latest",
    "ci-nodejs16-macos-latest",
  ])
}

module "awala_lib_core_js" {
  source  = "relaycorp/oss-project/github"
  version = "1.0.1"

  name         = "relaynet-core-js"
  description  = "JavaScript library for the core of Awala"
  homepage_url = "https://docs.relaycorp.tech/relaynet-core-js/"
  licence      = "mit"
  topics       = ["awala", "javascript", "nodejs"]
  ci_contexts  = local.lib_nodejs_v12_to_v16_ci_contexts
  main_branch  = "master"

  pages_source_path = "/"
}
