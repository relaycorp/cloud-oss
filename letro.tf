locals {
  letro_external_devs = [for email in var.letro_external_devs : "user:${email}"]
}

module "letro_android" {
  source  = "relaycorp/oss-project/github"
  version = "2.9.0"

  name           = "letro-android"
  description    = "Letro for Android"
  licence        = "gplv3"
  topics         = ["letro", "android"]
  ci_contexts    = ["Run static checks and tests"]
  support_issues = false
}

module "letro_android_ci" {
  source  = "relaycorp/oss-project/github//modules/android-app-ci"
  version = "2.9.0"

  gcp_project_name = "letro-android"
  gh_repo_name     = module.letro_android.name

  firebase_test_lab_viewers = local.letro_external_devs
}

module "letro_cloud" {
  source  = "relaycorp/oss-project/github"
  version = "2.9.0"

  name         = "letro-cloud"
  description  = "Infrastructure as Code and configuration for Letro's centralised components"
  homepage_url = ""
  licence      = "agpl"
  topics       = ["letro"]

  support_releases = false
  support_issues   = false
}
