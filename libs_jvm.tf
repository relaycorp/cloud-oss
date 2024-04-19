module "doh_jvm" {
  source  = "relaycorp/oss-project/github"
  version = "2.13.8"

  name         = "doh-jvm"
  description  = "Basic DNS-over-HTTPS library for the JVM"
  homepage_url = "https://central.sonatype.com/search?q=doh&namespace=tech.relaycorp"
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

  support_discussions = true

  pages_source_path = "/"
}
