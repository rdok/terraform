provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
  # vpc_security_group_ids = ["sg-0077..."]
  # subnet_id = "subnet-923a..."
}

