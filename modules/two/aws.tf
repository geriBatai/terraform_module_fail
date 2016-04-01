provider "aws" {
  region = "us-east-1"
}

variable "fail" {}

resource "aws_instance" "sample" {
  count = "${length(split(",", var.fail))}"
  ami = "ami-408c7f28"
  instance_type = "t1.micro"
}

