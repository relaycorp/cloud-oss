module "veraid_js" {
  source  = "relaycorp/oss-project/github"
  version = "2.6.0"

  name         = "veraid-js"
  description  = "VeraId library for Node.js"
  homepage_url = "https://www.npmjs.com/package/@relaycorp/veraid"
  licence      = "mit"
  topics       = ["veraid"]
  ci_contexts  = local.nodejs_lib_min_v16_ci_contexts
}
