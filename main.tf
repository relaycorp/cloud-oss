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
      version = "~> 5.45.0"
    }

    google = {
      source  = "hashicorp/google"
      version = "~> 5.6.0"
    }
  }
}

provider "github" {
  owner = "relaycorp"
}
