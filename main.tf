terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.6.0"
    }
  }
}

provider "aws" {
 region = "us-east-2"
 
}

# /*
# resource "aws_key_pair" "deployer" {
#   key_name   = "Terrafor-Key-suraj"
#   public_key = "SURAJ"
#   Git push for 11
  
  
#  14 - MARCH 22  Git push GIT "" "name" {
    
#   }
# //}*/

# resource "aws_instance" "Terra-Demo" {
#   ami           = "ami-001089eb624938d9f"
#   instance_type = "t2.micro"
#   subnet_id = "subnet-01a956015fff8a630"
#   key_name = "SURAJ"
#  // key_name = "aws_key_pair.deployer.key_name"

#   tags = {
#     Name = "TERRAFORM-EC2"
#     createdby= "terraform-2142"
#   }
# }


# Building VPC

