module "org_details" {
  source            = "./modules/org_details"
  organization_name = var.organization_name
}


data "intersight_network_element_summary" "fi-a" {
  serial = var.serial_number_of_fi-a
}

data "intersight_network_element_summary" "fi-b" {
  serial = var.serial_number_of_fi-b
}
