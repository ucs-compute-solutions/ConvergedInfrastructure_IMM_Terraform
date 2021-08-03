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


module "create_iqn_pool" {
  source                  = "./modules/iqn_pool"
  name_of_iqn_pool        = "${var.name_prefix}-IQN-Pool"
  description_of_iqn_pool = "IQN Pool for ${var.name_prefix}"
  prefix_for_iqn          = var.prefix_for_iqn
  suffix_for_iqn          = var.suffix_for_iqn
  iqn_start               = var.iqn_start
  size_of_iqn_pool        = var.size_of_iqn_pool
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


module "create_ip_pool-scsi-a" {
  source                 = "./modules/ip_pool"
  name_of_ip_pool        = "${var.name_prefix}-IP-Pool-iSCSI-A"
  description_of_ip_pool = "iSCSI-A IP Pool for ${var.name_prefix}"
  ip_pool_start          = var.ip_pool_start_iscsi_a
  size_of_ip_pool        = var.size_of_ip_pool_iscsi_a
  gateway                = var.gateway_iscsi_a
  netmask                = var.netmask_iscsi_a
  primary_dns            = var.primary_dns_iscsi_a
  secondary_dns          = var.secondary_dns_iscsi_a
  org_moid               = module.org_details.org_moid
}


module "create_ip_pool-iscsi-b" {
  source                 = "./modules/ip_pool"
  name_of_ip_pool        = "${var.name_prefix}-IP-Pool-iSCSI-B"
  description_of_ip_pool = "iSCSI-A IP Pool for ${var.name_prefix}"
  ip_pool_start          = var.ip_pool_start_iscsi_b
  size_of_ip_pool        = var.size_of_ip_pool_iscsi_b
  gateway                = var.gateway_iscsi_b
  netmask                = var.netmask_iscsi_b
  primary_dns            = var.primary_dns_iscsi_b
  secondary_dns          = var.secondary_dns_iscsi_b
  org_moid               = module.org_details.org_moid
}

