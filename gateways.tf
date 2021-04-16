// our internet gateway
resource "aws_internet_gateway" "inet" {
  vpc_id = aws_vpc.custom.id
  tags = {
    Name = "pubgate_terraform"
  }
}

// the natgateway that is attached to the public subnet
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.pub.id
  tags = {
    Name = "natgate_terraform"
  }
}
