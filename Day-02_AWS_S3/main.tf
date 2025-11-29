terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}
# Create a VPC
resource "aws_s3_bucket" "main" {
  bucket = "my-unique-bucket-rja-8500"
  tags = {
    Name        = "My bucket_rja"
    Environment = "Dev"
  }
}