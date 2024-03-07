terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.39.1"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" myserver1 { 
  ami           = "ami-0f403e3180720dd7e" 
  instance_type = "t3.nano"

  tags = { 
    Name = "Dev1" 
  } 
} 

output "instance_ami" {  
  value = aws_instance.myserver1.ami
}  

output "instance_arn" {  
  value = aws_instance.myserver1.arn 
}  
