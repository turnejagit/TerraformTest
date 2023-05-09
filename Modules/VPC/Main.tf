provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "Terraform" {
  cidr_block       = "10.10.0.0/16"
  enable_dns_support = "true"
  enable_dns_hostnames = "true"
  instance_tenancy = "default"

  tags = {
    Name = "Terraform Created"
  }
}

resource "aws_subnet" "private-subnet-1" {
    vpc_id = "${aws_vpc.Terraform.id}"
    cidr_block = "10.10.0.0/24"
    # map_public_ip_on_launch = “true” //it makes this a public subnet
    availability_zone = "us-east-1a"
    tags {
        Name = "private subnet 1"
    }
}