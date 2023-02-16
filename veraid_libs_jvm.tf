module "veraid_jvm" {
  source  = "relaycorp/oss-project/github"
  version = "2.6.0"

  name         = "veraid-jvm"
  description  = "VeraId library for the JVM"
  homepage_url = "https://search.maven.org/artifact/tech.relaycorp/veraid"
  licence      = "apache2"
  topics       = local.vera_topics
  ci_contexts  = local.lib_jvm_ci_contexts
}
