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
      version = "~> 6.2.1"
    }

    google = {
      source  = "hashicorp/google"
      version = "~> 5.29.1"
    }
  }
}

provider "github" {
  owner = "relaycorp"
}
