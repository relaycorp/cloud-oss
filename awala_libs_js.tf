module "awala_lib_core_js" {
  source  = "relaycorp/oss-project/github"
  version = "2.14.0"

  name         = "relaynet-core-js"
  description  = "JavaScript library for the core of Awala"
  homepage_url = "https://docs.relaycorp.tech/relaynet-core-js/"
  licence      = "mit"
  topics       = ["awala", "javascript", "nodejs"]
  ci_contexts  = local.nodejs_lib_ci_contexts
  main_branch  = "master"
}

module "awala_lib_testing_js" {
  source  = "relaycorp/oss-project/github"
  version = "2.14.0"

  name         = "relaynet-testing-js"
  description  = "Testing utilities for Awala implementations in JavaScript"
  homepage_url = "https://docs.relaycorp.tech/relaynet-testing-js/"
  licence      = "mit"
  topics       = ["awala", "javascript", "nodejs", "testing"]
  ci_contexts  = local.nodejs_lib_ci_contexts
}

module "awala_lib_keystore_db_js" {
  source  = "relaycorp/oss-project/github"
  version = "2.14.0"

  name         = "keystore-db-js"
  description  = "TypeORM-based Private and Public Key Store extension for Awala in JavaScript"
  homepage_url = "https://docs.relaycorp.tech/keystore-db-js/"
  licence      = "mit"
  topics       = ["awala", "typeorm"]
  ci_contexts  = local.nodejs_lib_ci_contexts
}

module "awala_lib_keystore_mongodb_js" {
  source  = "relaycorp/oss-project/github"
  version = "2.14.0"

  name         = "awala-keystore-mongodb-js"
  description  = "MongoDB-based Certificate and Public Key Store for Awala in JavaScript"
  homepage_url = "https://docs.relaycorp.tech/awala-keystore-mongodb-js/"
  licence      = "mit"
  topics       = ["awala", "mongodb"]
  ci_contexts  = local.nodejs_lib_ci_contexts
}

module "awala_lib_keystore_gcp_secretmanager_js" {
  source  = "relaycorp/oss-project/github"
  version = "2.14.0"

  name         = "awala-keystore-cloud-js"
  description  = "Multi-cloud Awala Key Store for server-side Node.js apps"
  homepage_url = "https://docs.relaycorp.tech/awala-keystore-cloud-js/"
  licence      = "mit"
  topics       = ["awala", "gcp", "mongodb", "hashicorp-vault"]
  ci_contexts  = local.nodejs_lib_ci_contexts
}

module "awala_lib_pohttp_js" {
  source  = "relaycorp/oss-project/github"
  version = "2.14.0"

  name         = "relaynet-pohttp-js"
  description  = "JavaScript library implementing the PoHTTP binding"
  homepage_url = "https://docs.relaycorp.tech/relaynet-pohttp-js/"
  licence      = "mit"
  topics       = ["awala", "awala-binding-pohttp"]
  main_branch  = "master"
  ci_contexts  = local.nodejs_lib_ci_contexts
}

module "awala_lib_cogrpc_js" {
  source  = "relaycorp/oss-project/github"
  version = "2.14.0"

  name         = "relaynet-cogrpc-js"
  description  = "JavaScript library implementing the CogRPC binding"
  homepage_url = "https://docs.relaycorp.tech/relaynet-cogrpc-js/"
  licence      = "mit"
  topics       = ["awala", "awala-binding-cogrpc"]
  ci_contexts  = local.nodejs_lib_ci_contexts
  main_branch  = "master"
}

module "awala_lib_poweb_js" {
  source  = "relaycorp/oss-project/github"
  version = "2.14.0"

  name         = "relaynet-poweb-js"
  description  = "JavaScript implementation of the PoWeb binding"
  homepage_url = "https://docs.relaycorp.tech/relaynet-poweb-js/"
  licence      = "mit"
  topics       = ["awala", "awala-binding-poweb"]
  ci_contexts  = local.nodejs_lib_ci_contexts
  main_branch  = "master"
}
