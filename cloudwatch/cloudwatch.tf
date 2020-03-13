provider "aws" {
  region = "eu-west-1"
}

resource "aws_cloudwatch_log_group" "apollo-12_web" {
  name = "/app/apollo-12"
  retention_in_days = 14

  tags = {
    Environment = "production"
    Application = "Apollo12"
  }
}


//resource "aws_cloudwatch_log_destination" "apollo-12_web" {
//  name = "apollo-12_web"
//  role_arn = aws_iam_role.iam_for_cloudwatch.arn
//  target_arn = aws_kinesis_stream.kinesis_for_cloudwatch.arn
//}
//
//resource "aws_iam_role" "apollo-12_web" {
//  name = "Apollo-12_webRole"
//  assume_role_policy = ""
//}
//
//resource "aws_iam_policy" "policy" {
//  name = "test_policy"
//  path = "/"
//  description = "My test policy"
//
//  policy = <<EOF
//{
//  "Version": "2012-10-17",
//  "Statement": [
//    {
//      "Action": [
//        "ec2:Describe*"
//      ],
//      "Effect": "Allow",
//      "Resource": "*"
//    }
//  ]
//}
//EOF
//}
//
