# Configure the AWS Provider
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  # Configuration options
    region = "ap-south-1"
}

# backend configuration
terraform {
  backend "s3" {
    bucket         = "aws-s3-terraform-rja"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    use_lockfile  = "true"
    encrypt        = true
  }
}
# Create a s3 bucket
resource "aws_s3_bucket" "main" {
  bucket = "my-unique-bucket-rja-8500"
  tags = {
    Name        = "My bucket_rja"
    Environment = "Dev"
  }
}