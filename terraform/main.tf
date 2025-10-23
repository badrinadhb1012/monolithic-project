provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "key" {
ami = "ami-0341d95f75f311023"
instance_type = "t3.micro"
key_name = "karthikmumbai"
count = 1
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project-instance1"
Environment = "dev"
}
}
