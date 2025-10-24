provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "key" {
ami = "ami-06fa3f12191aa3337"
instance_type = "t3.micro"
key_name = "karthikmumbai1"
count = 1
vpc_security_group_ids = [aws_security_group.demo-sg1.id]
tags = {
Name = "project-instance1"
Environment = "dev"
}
}
