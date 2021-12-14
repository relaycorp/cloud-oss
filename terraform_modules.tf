module "tfmod_oss_project" {
  source  = "relaycorp/oss-project/github"
  version = "1.0.4"

  name         = "terraform-github-oss-project"
  description  = "Terraform module for open source projects by Relaycorp"
  homepage_url = "https://registry.terraform.io/modules/relaycorp/oss-project/github/latest"
  licence      = "MIT"
  ci_contexts  = ["ci"]
}
