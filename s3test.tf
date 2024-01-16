resource "aws_s3_bucket" "example_buck" {
  bucket = "mrhtest111222333"
}

resource "aws_s3_bucket_public_access_block" "example_block" {
  bucket = aws_s3_bucket.example_buck.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
