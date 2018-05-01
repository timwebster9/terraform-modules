
resource "aws_security_group" "rancher_server" {
  name = "rancher-preview-sg"
  description = "Security group for web that allows ssh and web traffic from internet"
  vpc_id = "${aws_vpc.main.id}"

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    cidr_blocks = ["${var.myip}/32"]
  }

  ingress {
    from_port = 80
    to_port   = 80
    protocol  = "tcp"
    cidr_blocks = ["${var.myip}/32", "${var.private_subnet_cidr}"]
  }

  ingress {
    from_port = 443
    to_port   = 443
    protocol  = "tcp"
    cidr_blocks = ["${var.myip}/32", "${var.private_subnet_cidr}"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "rancher-preview-sg"
    Group = "rancher-preview"
  }
}