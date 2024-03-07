resource "aws_instance" myserver1 { 
  ami           = "ami-0f403e3180720dd7e" 
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