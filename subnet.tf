# aws_subnet

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.1.0.0/16"
  # cidr_block = "10.1.0.0/17"
  # cidr_block = "10.1.128.0/17"
  availability_zone = "us-east-2"

  tags = {
    Name = "Build-Pub-Subnet-Terraform"
  }
}

resource "aws_subnet" "in_secondary_cidr" {
  vpc_id     = aws_vpc_ipv4_cidr_block_association.secondary_cidr.vpc_id
  cidr_block = "10.2.0.0/16"
   # availability_zone = "availability_zone_id"

   tags = {
    Name = "Build-Pri-Subnet-Terraform"
  }
}

# variable "subnet_cidr" {
#   default = ["10.2.0.0/18", "10.2.64.0/18", "10.2.128.0/18", "10.2.192.0/18"]
# }

# variable "subnet_azs" {
#   default = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1c"]
# }

# resource "aws_subnet" "my_subnets" {
#   count             = 4
#   vpc_id            = aws_vpc.main.id
#   cidr_block        = element(var.subnet_cidr, count.index)
#   availability_zone = element(var.subnet_azs, count.index)
#   tags = {
    
#     Name = "PUBLIC-Sub"
#     }
# }
