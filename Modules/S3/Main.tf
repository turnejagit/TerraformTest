provider "aws" {
  region = "us-east-2"
}

resource "aws_s3_bucket" "example" {
  bucket = "jat2-jat-my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }

}