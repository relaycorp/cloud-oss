module "awala_lib_core_jvm" {
  source  = "relaycorp/oss-project/github"
  version = "2.13.7"

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
  version = "2.13.7"

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

module "awala_lib_cogrpc_jvm" {
  source  = "relaycorp/oss-project/github"
  version = "2.13.7"

  name         = "awala-cogrpc-jvm"
  description  = "JVM implementation of the Awala CogRPC binding"
  homepage_url = "https://docs.relaycorp.tech/awala-cogrpc-jvm/"
  licence      = "apache2"
  topics = [
    "awala",
    "awala-binding-cogrpc",
    "java",
    "jvm",
    "kotlin"
  ]
  ci_contexts = local.lib_jvm_ci_contexts
  main_branch = "master"

  pages_source_path = "/"
}

module "awala_lib_cogrpc_okhttp_jvm" {
  source  = "relaycorp/oss-project/github"
  version = "2.13.7"

  name         = "awala-cogrpc-okhttp-jvm"
  description  = "gRPC OkHTTP channel provider for Awala's CogRPC JVM implementation"
  homepage_url = "https://docs.relaycorp.tech/awala-cogrpc-okhttp-jvm/"
  licence      = "apache2"
  topics = [
    "awala",
    "awala-binding-cogrpc",
    "java",
    "jvm",
    "kotlin",
    "android",
    "okhttp"
  ]
  ci_contexts = local.lib_jvm_ci_contexts
  main_branch = "master"
}

module "awala_lib_poweb_jvm" {
  source  = "relaycorp/oss-project/github"
  version = "2.13.7"

  name         = "awala-poweb-jvm"
  description  = "JVM implementation of the Awala PoWeb binding"
  homepage_url = ""
  licence      = "apache2"
  topics = [
    "awala",
    "awala-binding-poweb",
    "java",
    "jvm",
    "kotlin",
  "android"]
  ci_contexts = local.lib_jvm_ci_contexts
  main_branch = "master"

  pages_source_path = "/"
}

module "awala_lib_keystore_jvm" {
  source  = "relaycorp/oss-project/github"
  version = "2.13.7"

  name         = "awala-keystore-file-jvm"
  description  = "JVM implementation of file-based Private and Public Key Stores for Awala"
  homepage_url = ""
  licence      = "apache2"
  topics = [
    "awala",
    "awala-keystore",
    "java",
    "jvm",
    "kotlin"
  ]
  ci_contexts = local.lib_jvm_ci_contexts
}
