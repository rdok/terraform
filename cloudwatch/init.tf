provider "aws" {
  region = "eu-west-1"
}

resource "aws_cloudwatch_log_group" "service-name" {
  count = 0
  name = "/app/service-name"

  tags = {
    Environment = "production"
    Application = "serviceName"
  }
}