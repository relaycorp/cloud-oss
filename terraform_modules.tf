module "tfmod_oss_project" {
  source  = "relaycorp/oss-project/github"
  version = "1.0.1"

  name        = "terraform-github-oss-project"
  description = "Terraform module for open source projects by Relaycorp"
  licence     = "MIT"
}
