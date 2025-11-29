provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "key" {
ami = "ami-0d176f79571d18a8f"
instance_type = "t3.micro"
key_name = "karthikmumbai1"
count = 1
vpc_security_group_ids = [aws_security_group.demo-sg5.id]
tags = {
Name = "working1"
Environment = "dev"
}
}
