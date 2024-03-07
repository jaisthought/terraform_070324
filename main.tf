resource "aws_instance" myserver1 { 
  ami           = data.aws_ami.app_ami.id
  instance_type = var.instance_type

  tags = { 
    Name = "Dev1" 
  } 
} 

resource "aws_s3_bucket" "MyBucket" {
  bucket = "my-tf-test-bucket-070324"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

data "aws_ami" "app_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["bitnami-tomcat-*-x86_64-hvm-ebs-nami"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["979382823631"] # Bitnami
}