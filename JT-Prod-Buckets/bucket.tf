provider "aws" {
  region = "us-east-2"
}


module "s3" {
  source = "Modules/S3test/bucket.tf"
  bucket_name = "jats-module-bucket01"
}