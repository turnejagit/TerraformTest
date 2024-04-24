provider "aws" {
  region = "us-east-2"
}


module "S3test" {
source = "git::https://@github.com/turnejagit/TerraformTest//Modules/S3test"
bucket_prefix = "jat-test-module-bucket"
}
