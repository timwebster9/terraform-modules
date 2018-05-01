variable "assign_public_ip" {}
variable "instance_type" {}
variable "key_name" {}
variable "vpc_cidr" {}
variable "public_subnet_cidr" {}
variable "private_subnet_cidr" {}
variable "availability_zone" {}
variable "region" {
  default     = "eu-west-2"
}

locals {
  myip = "${chomp(data.http.icanhazip.body)}"
}



