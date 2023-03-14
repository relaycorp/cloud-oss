module "awala_lib_core_jvm" {
  source  = "relaycorp/oss-project/github"
  version = "2.6.0"

  name         = "awala-jvm"
  description  = "JVM library for the core of Awala"
  homepage_url = "https://docs.relaycorp.tech/awala-jvm/"
  licence      = "apache2"
  topics = [
    "awala",
    "java",
    "jvm",
    "kotlin",
    "android"]
  ci_contexts = local.lib_jvm_ci_contexts
  main_branch = "master"

  pages_source_path = "/"
}

module "awala_lib_testing_jvm" {
  source  = "relaycorp/oss-project/github"
  version = "2.6.0"

  name         = "awala-testing-jvm"
  description  = "Testing utilities for Awala implementations on the JVM"
  homepage_url = "https://docs.relaycorp.tech/awala-testing-jvm/"
  licence      = "apache2"
  topics = [
    "awala",
    "java",
    "jvm",
    "kotlin",
    "testing"
  ]
  ci_contexts = local.lib_jvm_ci_contexts
  main_branch = "master"

  pages_source_path = "/"
}
