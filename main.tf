provider "aws" {

  region = var.aws_region

}



resource "aws_iam_user" "this" {

  name = var.iam_user_name

}



resource "aws_iam_policy" "s3_read_policy" {

  name        = "S3ReadOnlyCustomPolicy"

  description = "Read-only access to S3 buckets"

  policy      = var.s3_read_policy

}



resource "aws_iam_user_policy_attachment" "attach_policy" {

  user       = aws_iam_user.this.name

  policy_arn = aws_iam_policy.s3_read_policy.arn

}


