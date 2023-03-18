module "veraid_ca_server" {
  source  = "relaycorp/oss-project/github"
  version = "2.6.0"

  name        = "veraid-authority"
  description = "VeraId Certificate Authority (CA) server"
  licence     = "agpl"
  topics      = local.veraid_topics
  ci_contexts = ["ci / ci"]
}
