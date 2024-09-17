terraform {
    required_providers{
        aws ={
            source = "hashicorp/aws"
            version = "~> 5.66"
        }
    }

    backend "s3" {
      bucket = "demo-bucket-31"
      key = "terraform"
      dynamodb_table = "demo_key"
      region = "us-east-1"
    }
    
}

provider "aws"{
    region = "us-east-1"

}