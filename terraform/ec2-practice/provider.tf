terraform {
    required_providers {
        aws={
            source = "Hashicorp/aws"
            version = "5.66.0"

        }
    }
}

provider "aws" {
    region = "us-east-1"
}