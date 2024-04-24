resource "aws_s3_bucket" "S3test" {
  bucket = "${var.s3-bucket-name}"
  acl    = "private"
}