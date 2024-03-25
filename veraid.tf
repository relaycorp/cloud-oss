locals {
  veraid_topics = ["veraid", "vera"]
}

module "veraid_js" {
  source  = "relaycorp/oss-project/github"
  version = "2.13.5"

  name         = "veraid-js"
  description  = "VeraId library for Node.js"
  homepage_url = "https://www.npmjs.com/package/@relaycorp/veraid"
  licence      = "mit"
  topics       = local.veraid_topics
  ci_contexts  = local.nodejs_lib_ci_contexts

  pages_source_path = "/"
}

module "veraid_jvm" {
  source  = "relaycorp/oss-project/github"
  version = "2.13.5"

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
  version = "2.13.5"

  name         = "veraid-authority"
  description  = "Cloud-native app that allows organisations to manage their VeraId members and the issuance of their respective bundles."
  homepage_url = "https://docs.relaycorp.tech/veraid-authority/"
  licence      = "agpl"
  topics       = local.veraid_topics
  ci_contexts  = ["ci / ci"]

  pages_source_path   = "/docs"
  pages_source_branch = "main"
}

module "veraid_authority_tf_gcp" {
  source  = "relaycorp/oss-project/github"
  version = "2.13.5"

  name         = "terraform-google-veraid-authority"
  description  = "Terraform module to manage an instance of VeraId Authority on GCP."
  homepage_url = "https://registry.terraform.io/modules/relaycorp/veraid-authority/google"
  licence      = "agpl"
  topics       = ["veraid", "terraform", "gcp"]
  ci_contexts  = ["ci-module / ci", "ci-module-awala / ci", "ci-example / ci", "ci-example-awala / ci"]
}

module "veraid_authority_js" {
  source  = "relaycorp/oss-project/github"
  version = "2.13.5"

  name         = "veraid-authority-js"
  description  = "JS client library for the VeraId Authority API"
  homepage_url = "https://www.npmjs.com/package/@relaycorp/veraid-authority"
  licence      = "mit"
  topics       = local.veraid_topics
  ci_contexts  = local.nodejs_lib_min_v20_ci_contexts

  pages_source_path = "/"
}
