resource "aws_subnet" "public" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${var.public_subnet_cidr}"
  availability_zone = "${var.availability_zone}"
  
  tags {
    "Name" = "public subnet"
  }
}