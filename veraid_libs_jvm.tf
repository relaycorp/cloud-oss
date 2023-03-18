module "veraid_jvm" {
  source  = "relaycorp/oss-project/github"
  version = "2.6.0"

  name         = "veraid-jvm"
  description  = "VeraId library for the JVM"
  homepage_url = "https://docs.relaycorp.tech/veraid-jvm/"
  licence      = "apache2"
  topics       = local.veraid_topics
  ci_contexts  = local.lib_jvm_ci_contexts

  pages_source_path = "/"
}
