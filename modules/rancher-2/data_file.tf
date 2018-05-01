data "template_file" "rancher_server_user_data" {
  template = "${file("${path.module}/scripts/start-rancher.tpl")}"
}