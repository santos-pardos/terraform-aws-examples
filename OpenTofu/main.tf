terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.47.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "first-ec2" {
  ami           = "ami-052064a798f08f0d3"
  instance_type = "t2.micro"
}
