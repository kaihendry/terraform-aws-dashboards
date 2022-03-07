terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region  = "ap-southeast-1"
  profile = "mine"
}

data "aws_region" "current" {}


module "cloudwatch_dashboard" {
    resource_prefix           = local.resource_prefix

  source          = "./modules/devops"
  aws_region      = data.aws_region.current.name
}
