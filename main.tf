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
      version = "~> 5.42.0"
    }

    google = {
      source  = "hashicorp/google"
      version = "~> 4.22.0"
    }
  }
}

provider "github" {
  owner = "relaycorp"
}
