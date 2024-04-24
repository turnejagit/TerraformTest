provider "aws" {
  region = "us-east-2"
}

module "Bucket2" {
source = "git::https://@github.com/turnejagit/TerraformTest//Modules/S3test"
bucket_name = "jat-test-module-bucket"
}
