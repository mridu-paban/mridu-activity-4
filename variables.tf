variable "aws_region" {

  description = "AWS region"

  type        = string

  default     = "eu-north-1"

}



variable "iam_user_name" {

  description = "IAM user name"

  type        = string

}



variable "s3_read_policy" {

  description = "S3 read-only IAM policy"

  type        = string

}


