// a public route table with a route to the internet gateway
resource "aws_route_table" "pub" {
  vpc_id = aws_vpc.custom.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.inet.id
  }

  tags = {
    Name = "pubroute_terraform"
  }
}

// a private route table with a route to the nat gateway
resource "aws_default_route_table" "priv" {
  default_route_table_id = aws_vpc.custom.default_route_table_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat.id
  }

  tags = {
    Name = "privroute_terraform"
  }
}


