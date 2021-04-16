// associate the public subnet with the public route table
resource "aws_route_table_association" "pub" {
  subnet_id      = aws_subnet.pub.id
  route_table_id = aws_route_table.pub.id
}

// associate the private subnet with the private route table
resource "aws_route_table_association" "priv" {
  subnet_id      = aws_subnet.priv.id
  route_table_id = aws_route_table.priv.id
}
