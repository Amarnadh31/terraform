terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.6"
    }
  }

  backend "s3" {
    bucket         = "expense-bucket-1"
    key            = "for-each/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "expense_pro"
  }
}

provider "aws" {
  region = "us-east-1"
}