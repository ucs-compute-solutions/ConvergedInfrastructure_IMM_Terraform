module "create_mac_pool-a" {
  source                  = "./modules/mac_pool"
  name_of_mac_pool        = "${var.name_prefix}-Mac-Pool-A"
  description_of_mac_pool = "Mac Pool for ${var.name_prefix} in FI-A"
  mac_pool_start          = var.mac_pool_start_on_fi_a
  size_of_mac_pool        = var.size_of_mac_pool_on_fi_a
  org_moid                = module.org_details.org_moid
}


module "create_mac_pool-b" {
  source                  = "./modules/mac_pool"
  name_of_mac_pool        = "${var.name_prefix}-Mac-Pool-B"
  description_of_mac_pool = "Mac Pool for ${var.name_prefix} in FI-B"
  mac_pool_start          = var.mac_pool_start_on_fi_b
  size_of_mac_pool        = var.size_of_mac_pool_on_fi_b
  org_moid                = module.org_details.org_moid
}



module "create_ip_pool_mgmt" {
  source                 = "./modules/ip_pool"
  name_of_ip_pool        = "${var.name_prefix}-IP-Pool-Mgmt"
  description_of_ip_pool = "IP Pool for ${var.name_prefix}"
  ip_pool_start          = var.ip_pool_start_for_management_access
  size_of_ip_pool        = var.size_of_ip_pool_for_management_access
  gateway                = var.gateway_mgmt
  netmask                = var.netmask_mgmt
  primary_dns            = var.primary_dns_mgmt
  secondary_dns          = var.secondary_dns_mgmt
  org_moid               = module.org_details.org_moid
}


module "create_wwnn_pool" {
  source                 = "./modules/fc_pool"
  name_of_fc_pool        = "${var.name_prefix}-WWNN-Pool"
  description_of_fc_pool = "WWNN Pool for ${var.name_prefix}"
  type_of_fc_pool        = "WWNN"
  fc_pool_start          = var.wwnn_pool_start
  size_of_fc_pool        = var.wwnn_pool_size
  org_moid               = module.org_details.org_moid

}


module "create_wwpn_pool-a" {
  source                 = "./modules/fc_pool"
  name_of_fc_pool        = "${var.name_prefix}-WWPN-Pool-A"
  description_of_fc_pool = "WWPN Pool for ${var.name_prefix} in FI-A"
  type_of_fc_pool        = "WWPN"
  fc_pool_start          = var.wwpn_pool_start_on_fi_a
  size_of_fc_pool        = var.wwpn_pool_size_on_fi_a
  org_moid               = module.org_details.org_moid

}


module "create_wwpn_pool-b" {
  source                 = "./modules/fc_pool"
  name_of_fc_pool        = "${var.name_prefix}-WWPN-Pool-B"
  description_of_fc_pool = "WWPN Pool for ${var.name_prefix} in FI-B"
  type_of_fc_pool        = "WWPN"
  fc_pool_start          = var.wwpn_pool_start_on_fi_b
  size_of_fc_pool        = var.wwpn_pool_size_on_fi_b
  org_moid               = module.org_details.org_moid

}
