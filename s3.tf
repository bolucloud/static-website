# S3 bucket for the website

resource "aws_s3_bucket" "static-website-bucket" {
  bucket = "www.${var.bucket_name}"
  policy = data.aws_iam_policy_document.website_policy.json
  tags   = var.common_tags
}

resource "aws_s3_bucket_website_configuration" "static-website-bucket-config" {
  bucket = aws_s3_bucket.static-website-bucket.bucket
  index_document {
    suffix = "index.html"
  }
  error_document {
    key = "error.html"
  }
}

resource "aws_s3_bucket_acl" "static-website-bucket-acl" {
  bucket = aws_s3_bucket.static-website-bucket.id
  acl    = "public-read"
}