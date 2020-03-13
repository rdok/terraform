//resource "aws_iam_role" "demo-codedeploy" {
//  name = "demo-codedeploy"
//
//  assume_role_policy = <<EOF
//{
//  "Version": "2012-10-17",
//  "Statement": [
//    {
//      "Effect": "Allow",
//      "Principal": {
//        "Service": "codedeploy.amazonaws.com"
//      },
//      "Action": "sts:AssumeRole"
//    }
//  ]
//}
//EOF
//
//}
//

//resource "aws_iam_role_policy" "demo-codedeploy" {
//  name   = "codedeploy-policy"
//  role   = aws_iam_role.demo-codedeploy.id
//  policy = data.aws_iam_policy_document.demo-codedeploy-role-policy.json
//}
//
resource "aws_iam_role" "apollo-12_web" {
  name = var.app-web
  assume_role_policy = data.aws_iam_policy_document.apollo-12_web-assume-role-policy.json
}


resource "aws_iam_role_policy" "apollo-12_web" {
  name = var.app-web
  role = aws_iam_role.apollo-12_web.id
  policy = data.aws_iam_policy_document.apollo-12_web.json
}

