provider "aws" {
  region = "us-east-2"
}
module "S3" {
source = "git::https://@github.com/turnejagit/TerraformTest//Modules/S3"
}

module "VPC" {
source = "git::https://@github.com/turnejagit/TerraformTest//Modules/VPC"
}