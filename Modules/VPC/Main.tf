provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "Terraform" {
  cidr_block       = "10.10.0.0/16"
  enable_dns_support = “true” 
  enable_dns_hostnames = “true” 
  instance_tenancy = "default"

  tags = {
    Name = "Terraform Created"
  }
}