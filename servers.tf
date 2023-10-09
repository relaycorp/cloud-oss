module "mock_cloudevents_broker" {
  source  = "relaycorp/oss-project/github"
  version = "2.13.0"

  name         = "mock-cloudevents-broker"
  description  = "In-memory CloudEvents broker for development environments."
  homepage_url = "https://docs.relaycorp.tech/mock-cloudevents-broker/"
  licence      = "agpl"
  topics       = ["cloudevents"]
  ci_contexts  = ["ci / ci"]
}
