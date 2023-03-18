module "doh_jvm" {
  source  = "relaycorp/oss-project/github"
  version = "2.6.0"

  name         = "doh-jvm"
  description  = "Basic DNS-over-HTTPS library for the JVM"
  homepage_url = "https://docs.relaycorp.tech/veraid-jvm/"
  licence      = "apache2"
  topics = [
    "doh",
    "dns-over-https",
    "java",
    "jvm",
    "kotlin",
    "android",
  ]
  ci_contexts = local.lib_jvm_ci_contexts

  pages_source_path = "/"
}
