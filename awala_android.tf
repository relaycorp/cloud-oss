module "awala_courier_android" {
  source  = "relaycorp/oss-project/github"
  version = "2.14.0"

  name         = "relaynet-courier-android"
  description  = "Awala Courier for Android"
  homepage_url = "https://play.google.com/store/apps/details?id=tech.relaycorp.courier"
  licence      = "gplv3"
  topics       = ["awala", "awala-courier", "android"]
  main_branch  = "master"
  ci_contexts  = ["ci / test"]

  pages_enabled = false
}

module "awala_courier_ci" {
  source  = "relaycorp/oss-project/github//modules/android-app-ci"
  version = "2.14.0"

  gcp_project_name = "relaynet-courier"
  gh_repo_name     = module.awala_courier_android.name
}

module "awala_lib_endpoint_android" {
  source  = "relaycorp/oss-project/github"
  version = "2.14.0"

  name         = "awala-endpoint-android"
  description  = "High-level library for Android apps implementing Awala endpoints"
  homepage_url = ""
  licence      = "apache2"
  topics = [
    "awala",
    "kotlin",
    "android"
  ]
  ci_contexts = local.lib_jvm_ci_contexts
}
