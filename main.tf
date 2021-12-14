terraform {
  backend "remote" {
    organization = "Relaycorp"

    workspaces {
      name = "oss"
    }
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.19.0"
    }
  }
}

provider "github" {
  owner = "relaycorp"
}
