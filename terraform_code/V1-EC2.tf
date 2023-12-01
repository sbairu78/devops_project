terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
  required_version = ">= 1.2.0"
}
provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "demo-server" {
    ami = "ami-093467ec28ae4fe03"
    instance_type = "t2.micro"
    key_name = "dpp"
}