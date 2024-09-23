module "tfmod_oss_project" {
  source  = "relaycorp/oss-project/github"
  version = "2.14.1"

  name         = "terraform-github-oss-project"
  description  = "Terraform module for open source projects by Relaycorp"
  homepage_url = "https://registry.terraform.io/modules/relaycorp/oss-project/github/latest"
  licence      = "MIT"
  ci_contexts  = ["ci-module / ci", "ci-android-app / ci", "ci-example / ci"]

  pages_enabled = false
}

module "tfmod_closed_source_project" {
  source  = "relaycorp/oss-project/github"
  version = "2.14.1"

  name         = "terraform-github-closed-source"
  description  = "Terraform module for closed source projects by Relaycorp"
  homepage_url = "https://registry.terraform.io/modules/relaycorp/closed-source/github/latest"
  licence      = "MIT"
  ci_contexts  = ["ci-module / ci", "ci-example / ci"]

  pages_enabled = false
}
