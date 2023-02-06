module "veraid_js" {
  source  = "relaycorp/oss-project/github"
  version = "2.6.0"

  name         = "vera-js"
  description  = "VeraId library for Node.js"
  homepage_url = "https://www.npmjs.com/package/@relaycorp/veraid"
  licence      = "mit"
  topics       = ["veraid", "vera"]
  ci_contexts  = local.nodejs_lib_min_v16_ci_contexts

  pages_source_path = "/"
}