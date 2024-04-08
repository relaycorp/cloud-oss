locals {
  letro_external_devs = [for email in var.letro_external_devs : "user:${email}"]
}

module "letro_android" {
  source  = "relaycorp/oss-project/github"
  version = "2.13.7"

  name           = "letro-android"
  description    = "Letro for Android"
  licence        = "gplv3"
  topics         = ["letro", "android"]
  ci_contexts    = ["ci / test"]
  support_issues = false
}

module "letro_android_ci" {
  source  = "relaycorp/oss-project/github//modules/android-app-ci"
  version = "2.13.7"

  gcp_project_name = "letro-android"
  gh_repo_name     = module.letro_android.name

  firebase_test_lab_viewers = local.letro_external_devs
}

module "letro_cloud" {
  source  = "relaycorp/oss-project/github"
  version = "2.13.7"

  name        = "letro-cloud"
  description = "Infrastructure as Code and configuration for Letro's centralised components"
  licence     = "agpl"
  topics      = ["letro"]

  support_releases = false
  support_issues   = false
}

module "letro_server" {
  source  = "relaycorp/oss-project/github"
  version = "2.13.7"

  name        = "letro-server"
  description = "Awala endpoint backend backing Letro's centralised service"
  licence     = "agpl"
  topics      = ["letro"]
  ci_contexts = ["ci / ci"]

  support_releases = false
  support_issues   = false

  pages_source_path   = "/docs"
  pages_source_branch = "main"
  homepage_url        = "https://docs.relaycorp.tech/letro-server/"
}

module "letro_lib_jvm" {
  source  = "relaycorp/oss-project/github"
  version = "2.13.7"

  name         = "letro-jvm"
  description  = "Letro core library for the JVM"
  homepage_url = ""
  licence      = "apache2"
  topics = [
    "letro",
    "jvm",
    "kotlin"
  ]
  ci_contexts = local.lib_jvm_ci_contexts
}
