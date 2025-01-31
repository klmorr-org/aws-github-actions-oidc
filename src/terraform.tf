terraform {
  required_version = ">= 1.9.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }

  backend "s3" {
    bucket         = "klmorr-terraform-state"
    region         = "us-east-1"
    dynamodb_table = "klmorr-terraform-state"
    key            = "aws-github-actions-oidc/terraform.tfstate"
    encrypt        = true
  }
}

provider "aws" {
  default_tags {
    tags = var.default_tags
  }
  profile = var.profile
}
