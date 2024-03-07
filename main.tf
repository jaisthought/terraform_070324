resource "aws_instance" myserver1 { 
  ami           = "ami-0f403e3180720dd7e" 
  instance_type = var.instance_type

  tags = { 
    Name = "Dev1" 
  } 
} 