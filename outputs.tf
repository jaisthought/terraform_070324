output "instance_ami" {  
  value = aws_instance.myserver1.ami
}  

output "instance_arn" {  
  value = aws_instance.myserver1.arn 
} 