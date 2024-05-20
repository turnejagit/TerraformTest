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
    tags = {
        Name = "private subnet 1"
    }
}

resource "aws_subnet" "private-subnet-2" {
    vpc_id = "${aws_vpc.Terraform.id}"
    cidr_block = "10.10.1.0/24"
    # map_public_ip_on_launch = “true” //it makes this a public subnet
    availability_zone = "us-east-1b"
    tags = {
        Name = "private subnet 2"
    }
}

resource "aws_subnet" "private-subnet-3" {
    vpc_id = "${aws_vpc.Terraform.id}"
    cidr_block = "10.10.3.0/24"
    # map_public_ip_on_launch = “true” //it makes this a public subnet
    availability_zone = "us-east-1b"
    tags = {
        Name = "private subnet 3"
    }
}

resource "aws_vpc_dhcp_options" "ecat-Default-DHCP-Option-Set" {
  domain_name          = "ue2.na.aws.cat.com"
  domain_name_servers  = ["AmazonProvidedDNS"]
  ntp_servers          = ["169.24.169.123"]

  tags = {
    Name = "ecat-Default-DHCP-Option-Set"
  }
}

resource "aws_vpc_dhcp_options_association" "dns_resolver" {
  vpc_id          = aws_vpc.Terraform.id
  dhcp_options_id = aws_vpc_dhcp_options.ecat-Default-DHCP-Option-Set.id
}