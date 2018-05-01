resource "aws_nat_gateway" "nat" {
  allocation_id = "${aws_eip.nat_gateway.id}"
  subnet_id     = "${aws_subnet.public.id}"
  depends_on    = ["aws_internet_gateway.gw"]

  tags {
    Name = "nat gateway"
  }
}