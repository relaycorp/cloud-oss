module "awala_courier_android" {
  source  = "relaycorp/oss-project/github"
  version = "2.6.0"

  name         = "relaynet-courier-android"
  description  = "Awala Courier for Android"
  homepage_url = "https://play.google.com/store/apps/details?id=tech.relaycorp.courier"
  licence      = "gplv3"
  topics       = ["awala", "awala-courier", "android"]
  main_branch  = "master"
  ci_contexts  = ["Run static checks and tests"]
}

module "awala_courier_ci" {
  source  = "relaycorp/oss-project/github//modules/android-app-ci"
  version = "2.6.0"

  gcp_project_name = "relaynet-courier"
  gh_repo_name     = module.awala_courier_android.name
}