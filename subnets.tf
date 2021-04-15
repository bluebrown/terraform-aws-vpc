// a public subnet
resource "aws_subnet" "pub" {
  vpc_id     = aws_vpc.custom.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "pubnet_terraform"
  }

  // create new ec2 instances with public ip 
  map_public_ip_on_launch = true
}

// a private subnet
resource "aws_subnet" "priv" {
  vpc_id     = aws_vpc.custom.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "privnet_terraform"
  }

  // dont create new ec2 instances with public ip 
  map_public_ip_on_launch = false
}
