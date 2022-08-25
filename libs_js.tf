module "websocket_mock_js" {
  source  = "relaycorp/oss-project/github"
  version = "2.6.0"

  name         = "ws-mock-js"
  description  = "Mock client and server to unit test the NPM package 'ws'"
  homepage_url = "https://www.npmjs.com/package/@relaycorp/ws-mock"
  licence      = "mit"
  topics       = ["websocket"]
  ci_contexts  = local.nodejs_lib_ci_contexts
}

module "object_storage_js" {
  source  = "relaycorp/oss-project/github"
  version = "2.6.0"

  name         = "object-storage-js"
  description  = "Node.js client for object stores like AWS S3, GCP GCS or Minio"
  homepage_url = "https://docs.relaycorp.tech/object-storage-js/"
  licence      = "mit"
  topics       = ["object-storage", "object-store", "s3", "gcs", "minio"]
  ci_contexts  = local.nodejs_lib_ci_contexts

  pages_source_path = "/"
}

module "pino_cloud_js" {
  source  = "relaycorp/oss-project/github"
  version = "2.6.0"

  name         = "pino-cloud-js"
  description  = "Pino integration for cloud logging services like Google Stackdriver"
  homepage_url = "https://docs.relaycorp.tech/pino-cloud-js/"
  licence      = "mit"
  topics       = ["pino", "stackdriver"]
  ci_contexts  = local.nodejs_lib_ci_contexts

  pages_source_path = "/"
}

module "it_duplex_ack_js" {
  source  = "relaycorp/oss-project/github"
  version = "2.6.0"

  name         = "it-duplex-ack-js"
  description  = "Create source/sink iterables for a duplex stream where each message should be acknowledged"
  homepage_url = ""
  licence      = "mit"
  topics       = ["javascript", "iterables", "streams"]
  ci_contexts  = local.nodejs_lib_ci_contexts
}

module "dnssec_js" {
  source  = "relaycorp/oss-project/github"
  version = "2.6.0"

  name         = "dnssec-verifier-js"
  description  = "Resolver-agnostic DNSSEC chain verification library for Node.js"
  homepage_url = ""
  licence      = "mit"
  topics       = ["dnssec"]
  ci_contexts  = local.nodejs_lib_ci_contexts

  pages_source_path = "/"
}
