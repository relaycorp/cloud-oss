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
      version = "~> 6.0.0"
    }

    google = {
      source  = "hashicorp/google"
      version = "~> 5.19.0"
    }
  }
}

provider "github" {
  owner = "relaycorp"
}
