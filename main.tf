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
      version = "~> 6.3.0"
    }

    google = {
      source  = "hashicorp/google"
      version = "~> 6.1.0"
    }
  }
}

provider "github" {
  owner = "relaycorp"
  app_auth {} // Use environment variables
}
