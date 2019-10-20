# https://discuss.hashicorp.com/t/how-to-work-with-json/2345/2
locals {
  json_data = jsondecode(file("${path.module}/data.json"))
}

output "ss_vpc" {
  value = local.json_data.sharedservice.vpc
}

output "nonprod_" {
  value = local.json_data.nonprod.vpc
}