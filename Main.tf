provider "aws" {
  region = "us-east-1"
}

module "S3" {
source = "git::https://@github.com/turnejagit/TerraformTest//Modules/S3"
}

module "VPC" {
source = "git::https://@github.com/turnejagit/TerraformTest//Modules/VPC"
}

module "Bucket1" {
source = "git::https://@github.com/turnejagit/TerraformTest//Modules/S3test"
s3-bucket-name = "jat-test-module-bucket"
}