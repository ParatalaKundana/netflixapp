provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one"{
count = 5
ami = "ami-02972a2a0ac299bb7"
instance_type = "t2.medium"
key_name = "kundu"
vpc_security_group_ids = ["sg-0e31c2d5c5a74b17d"]
tags = {
Name = var.instance_names[count.index]
}
}
variable "instance_names" {
default = ["jenkins" , "nexus" , "AppServer-1" , "AppServer-2" , "MonitoringServer"]
}
