terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
  access_key = "AKIA4AE6PGTTD3USY6GQ"
  secret_key = "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"
}

