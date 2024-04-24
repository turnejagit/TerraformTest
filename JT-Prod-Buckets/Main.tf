provider "aws" {
  region = "us-east-2"
}


module "S3test" {
source = "git::https://@github.com/turnejagit/TerraformTest//Modules/S3test"
s3-bucket-name = "jat-test-module-bucket"
}
