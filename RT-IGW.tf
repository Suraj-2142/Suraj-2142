# IGW

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "Build-igw"
  }
}
# AWS_Route Table

resource "aws_route_table" "Terra-Pub-RT" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "10.2.0.0/16"
    gateway_id = aws_internet_gateway.gw.id
  }
}
