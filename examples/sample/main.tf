terraform {
  required_version = ">= 1.0.1"
  required_providers {
    aws = {
      version = "~> 3.74"
    }
    template = {
      version = "~> 2.2.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "acm" {
  source = "../../"

  zone_id     = "Z123456789"
  domain_name = "demo.example.com"
  # ---------------------------------------------
  # Note: Do not change teamid and prjid once set.
  teamid = var.teamid
  prjid  = var.prjid
}
