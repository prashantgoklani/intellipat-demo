provider "aws" {
  region = "us-east-1"
}

variable "test_variable {
    type = sting
    description = "This is a test variable"
}

resource "aws_instance" "example_instance" {
  instance_type = "t2.micro"
  ami           = "ami-007855ac798b5175e"
  tags          = local.name
}

locals {
  name = "some_name"
}
