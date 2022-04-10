# S3 bucket for the website

resource "aws_s3_bucket" "static-website-bucket" {
  bucket = "www.${var.bucket_name}"
  acl    = "public-read"
  policy = data.aws_iam_policy_document.website_policy

    website {
        index_document = "index.html"
        error_document = "error.html"
    }


  tags = var.common_tags
}



