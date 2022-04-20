module "awala_lib_core_js" {
  source  = "relaycorp/oss-project/github"
  version = "2.4.1"

  name         = "relaynet-core-js"
  description  = "JavaScript library for the core of Awala"
  homepage_url = "https://docs.relaycorp.tech/relaynet-core-js/"
  licence      = "mit"
  topics       = ["awala", "javascript", "nodejs"]
  ci_contexts  = local.nodejs_lib_ci_contexts
  main_branch  = "master"

  pages_source_path = "/"
}

module "awala_lib_testing_js" {
  source  = "relaycorp/oss-project/github"
  version = "2.4.1"

  name         = "relaynet-testing-js"
  description  = "Testing utilities for Awala implementations in JavaScript"
  homepage_url = "https://docs.relaycorp.tech/relaynet-testing-js/"
  licence      = "mit"
  topics       = ["awala", "javascript", "nodejs", "testing"]
  ci_contexts  = local.nodejs_lib_ci_contexts

  pages_source_path = "/"
}

module "awala_lib_keystore_vault_js" {
  source  = "relaycorp/oss-project/github"
  version = "2.4.1"

  name         = "keystore-vault-js"
  description  = "Vault-based Private Key Store extension for relaynet-core-js"
  homepage_url = "https://docs.relaycorp.tech/keystore-vault-js/"
  licence      = "mit"
  topics       = ["awala", "hashicorp-vault"]
  main_branch  = "master"
  ci_contexts  = local.nodejs_lib_ci_contexts

  pages_source_path = "/"
}

module "awala_lib_keystore_db_js" {
  source  = "relaycorp/oss-project/github"
  version = "2.4.1"

  name         = "keystore-db-js"
  description  = "TypeORM-based Private and Public Key Store extension for Awala in JavaScript"
  homepage_url = "https://docs.relaycorp.tech/keystore-db-js/"
  licence      = "mit"
  topics       = ["awala", "typeorm"]
  ci_contexts  = local.nodejs_lib_ci_contexts
}

module "awala_lib_pohttp_js" {
  source  = "relaycorp/oss-project/github"
  version = "2.4.1"

  name         = "relaynet-pohttp-js"
  description  = "JavaScript library implementing the PoHTTP binding"
  homepage_url = "https://docs.relaycorp.tech/relaynet-pohttp-js/"
  licence      = "mit"
  topics       = ["awala", "awala-binding-pohttp"]
  main_branch  = "master"
  ci_contexts  = local.nodejs_lib_ci_contexts

  pages_source_path = "/"
}

module "awala_lib_cogrpc_js" {
  source  = "relaycorp/oss-project/github"
  version = "2.4.1"

  name         = "relaynet-cogrpc-js"
  description  = "JavaScript library implementing the CogRPC binding"
  homepage_url = "https://docs.relaycorp.tech/relaynet-cogrpc-js/"
  licence      = "mit"
  topics       = ["awala", "awala-binding-cogrpc"]
  ci_contexts  = local.nodejs_lib_ci_contexts
  main_branch  = "master"

  pages_source_path = "/"
}

module "awala_lib_poweb_js" {
  source  = "relaycorp/oss-project/github"
  version = "2.4.1"

  name         = "relaynet-poweb-js"
  description  = "JavaScript implementation of the PoWeb binding"
  homepage_url = "https://docs.relaycorp.tech/relaynet-poweb-js/"
  licence      = "mit"
  topics       = ["awala", "awala-binding-poweb"]
  ci_contexts  = local.nodejs_lib_ci_contexts
  main_branch  = "master"

  pages_source_path = "/"
}
