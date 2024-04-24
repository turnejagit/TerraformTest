provider "aws" {
  region = "us-east-2"
}


module s3_bucket {
  source = "Modules/S3test"
  bucket_prefix = "jat-test-module-bucket"
 }