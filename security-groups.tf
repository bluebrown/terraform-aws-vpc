// adopt default sg to make sure rules are flushed
resource "aws_default_security_group" "internal" {
  vpc_id = aws_vpc.custom.id

  tags = {
    Name = "intsg_terraform"
  }

  ingress {
    protocol  = -1
    self      = true
    from_port = 0
    to_port   = 0
    description = "self ref"
  }

  egress {
    protocol  = -1
    self      = true
    from_port = 0
    to_port   = 0
    description = "self ref"
  }

}
