locals {
  veraid_topics = ["veraid", "vera"]
}

module "veraid_js" {
  source  = "relaycorp/oss-project/github"
  version = "2.6.0"

  name         = "veraid-js"
  description  = "VeraId library for Node.js"
  homepage_url = "https://www.npmjs.com/package/@relaycorp/veraid"
  licence      = "mit"
  topics       = local.veraid_topics
  ci_contexts  = local.nodejs_lib_min_v16_ci_contexts

  pages_source_path = "/"
}

module "veraid_jvm" {
  source  = "relaycorp/oss-project/github"
  version = "2.6.0"

  name         = "veraid-jvm"
  description  = "VeraId library for the JVM"
  homepage_url = "https://docs.relaycorp.tech/veraid-jvm/"
  licence      = "apache2"
  topics       = local.veraid_topics
  ci_contexts  = local.lib_jvm_ci_contexts

  pages_source_path = "/"
}

module "veraid_ca_server" {
  source  = "relaycorp/oss-project/github"
  version = "2.6.0"

  name        = "veraid-authority"
  description = "VeraId Certificate Authority (CA) server"
  licence     = "agpl"
  topics      = local.veraid_topics
  ci_contexts = ["ci / ci"]
}

module "veraid_authority_js" {
  source  = "relaycorp/oss-project/github"
  version = "2.6.0"

  name         = "veraid-authority-js"
  description  = "JS client library for the VeraId Authority API"
  homepage_url = "https://www.npmjs.com/package/@relaycorp/veraid-authority"
  licence      = "mit"
  topics       = local.veraid_topics
  ci_contexts  = local.nodejs_lib_min_v16_ci_contexts
}
