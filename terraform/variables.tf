variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "account_id" {
  type    = string
  default = ""
}

variable "account_name" {
  type    = string
  default = ""
}

variable "AWS_ACCESS_KEY_ID" {
  type    = string
  default = ""
}

variable "AWS_SECRET_ACCESS_KEY" {
  type    = string
  default = ""
}

variable "bucket_name" {
  type    = string
  default = ""
}

variable "common_tags" {
  description = "common tags that will be applied to components"
  default     = {}
}

variable "domain_name" {
  type    = string
  default = "staticwebsite.bolu.cloud"
}
