provider "aws" {
  region = "us-east-2"
}

module "Bucket1" {
source = "git::https://@github.com/turnejagit/TerraformTest//Modules/S3test"
s3-bucket-name = "jat-test-module-bucket"
}
