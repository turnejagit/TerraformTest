provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "example" {
  bucket = "jat-jat-my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}