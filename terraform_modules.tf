module "tfmod_oss_project" {
  source  = "relaycorp/oss-project/github"
  version = "2.12.0"

  name         = "terraform-github-oss-project"
  description  = "Terraform module for open source projects by Relaycorp"
  homepage_url = "https://registry.terraform.io/modules/relaycorp/oss-project/github/latest"
  licence      = "MIT"
  ci_contexts  = ["ci-module / ci", "ci-android-app / ci", "ci-example / ci"]
}
