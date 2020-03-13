//resource "aws_lambda_function" "test_lambda" {
//  filename = "app.zip"
//  function_name = "CloudwatchApp"
//  role = aws_iam_role.iam_for_lambda.arn
//  handler = "exports.lambdaHandler"
//
//  source_code_hash = filebase64sha256("app.zip")
//
//  runtime = "nodejs12.x"
//
//  environment {
//    variables = {
//      Environment = "production"
//      Application = "Apollo12"
//    }
//  }
//}
//
//resource "aws_iam_role" "iam_for_lambda" {
//  name = "iam_for_lambda"
//
//  assume_role_policy = <<EOF
//{
//  "Version": "2012-10-17",
//  "Statement": [
//    {
//      "Action": "sts:AssumeRole",
//      "Principal": {
//        "Service": "lambda.amazonaws.com"
//      },
//      "Effect": "Allow",
//      "Sid": ""
//    }
//  ]
//}
//EOF
//}

