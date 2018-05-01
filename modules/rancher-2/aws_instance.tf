data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["${var.ami_name}"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["${var.ami_owner}"]
}

resource "aws_instance" "rancher_server" {
  ami                         = "${data.aws_ami.ubuntu.id}"
  instance_type               = "${var.instance_type}"
  subnet_id                   = "${aws_subnet.public.id}"
  vpc_security_group_ids      = ["${aws_security_group.rancher_server.id}"]
  associate_public_ip_address = "${var.assign_public_ip}"
  key_name                    = "${var.key_name}"

  tags {
    Name = "Rancher Server"
  }
}