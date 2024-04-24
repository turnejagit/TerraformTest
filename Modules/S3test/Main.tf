resource "aws_s3_bucket" "S3test" {
  bucket = "${var.bucket_name}"
  acl    = "private"
}