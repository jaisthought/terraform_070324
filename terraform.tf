terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.39.1"
    }
  }
}

provider "aws" {
  region = "us-east-01"
}

resource "aws_instance" myserver1 { 
  ami           = "ami-0f403e3180720dd7e" 
  instance_type = "t2.micro"

  tags = { 
    Name = "Dev" 
  } 
} 
