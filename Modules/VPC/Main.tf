provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "Terraform" {
  cidr_block       = "10.10.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Terraform Created"
  }
}