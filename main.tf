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
      version = "~> 6.2.0"
    }

    google = {
      source  = "hashicorp/google"
      version = "~> 5.17.0"
    }
  }
}

provider "github" {
  owner = "relaycorp"
}
