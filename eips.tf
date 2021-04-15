// the elastic ip in the public subnet that
// will be used to make web requests from the private subnet
// this is possible due to a rule in the private route table 
// pointing to this nat gateway
resource "aws_eip" "nat" {
  vpc = true

  depends_on = [
    aws_internet_gateway.inet
  ]

}
