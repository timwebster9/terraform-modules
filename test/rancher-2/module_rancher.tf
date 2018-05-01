module "rancher-2" {
  source              = "../../modules/rancher-2"
  assign_public_ip    = "${var.assign_public_ip}"
  instance_type       = "${var.instance_type}"
  ami_name            = "${var.ami_name}"
  ami_owner           = "${var.ami_owner}"
  key_name            = "${var.key_name}"
  myip                = "${local.myip}"
  vpc_cidr            = "${var.vpc_cidr}"
  public_subnet_cidr  = "${var.public_subnet_cidr}"
  private_subnet_cidr = "${var.private_subnet_cidr}"
  availability_zone   = "${var.availability_zone}"
}