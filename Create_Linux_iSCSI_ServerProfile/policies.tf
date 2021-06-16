
module "policies_for_linux_iscsi_boot" {
  source = "./modules/linux_iscsi_boot"
  org_moid = module.org_details.org_moid

  #IMC Access Policy
  name_of_imc_access_policy = "${var.name_prefix}-IMC-Access-Policy"
  description_of_imc_access_policy = "IMC Access Policy for ${var.name_prefix}"
  cimc_access_vlan = var.vlan_for_cimc_access
  ip_pool_for_cimc_access = module.create_ip_pool_mgmt.ip_pool_moid

  #Boot Policy for iSCSI Boot
  boot_policy_name                  = "${var.name_prefix}-Boot-Policy"
  boot_policy_description           = "Boot Policy for iSCSI Boot"
  boot_mode                         = var.boot_mode

  #BIOS Policy
  name_of_bios_policy               = "${var.name_prefix}-BIOS-Policy"
  description_of_bios_policy        = "BIOS Policy for ${var.name_prefix}"

  #iSCSI Adapter Policy
  name_of_iscsi_adapter_policy          = "${var.name_prefix}-iSCSI-Adapter-Policy"
  description_of_iscsi_adapter_policy   = "iSCSI Adapter Policy"
  tcp_connection_time_out               = var.tcp_connection_time_out
  dhcp_timeout                          = var.dhcp_timeout
  lun_busy_retry_count                  = var.lun_busy_retry_count

  #iSCSI-A Primary Target Policy
  name_of_iscsi_a_primary_target_policy           = "${var.name_prefix}-iSCSI-A-Primary-Target"
  description_of_iscsi_a_primary_target_policy    = "iSCSI-A Primary Target Policy"
  target_ip_of_iscsi_a_primary                    = var.target_ip_of_iscsi_a_primary
  iscsi_port_of_iscsi_a_primary                   = var.iscsi_port_of_iscsi_a_primary
  target_iqn_of_iscsi_a_primary                   = var.target_iqn_of_iscsi_a_primary
  lun_id_of_iscsi_a_primary                       = var.lun_id_of_iscsi_a_primary

  #iSCSI-A Secondary Target Policy
  name_of_iscsi_a_secondary_target_policy         = "${var.name_prefix}-iSCSI-A-Secondary-Target"
  description_of_iscsi_a_secondary_target_policy  = "iSCSI-A Secondary Target Policy"
  target_ip_of_iscsi_a_secondary                  = var.target_ip_of_iscsi_a_secondary
  iscsi_port_of_iscsi_a_secondary                 = var.iscsi_port_of_iscsi_a_secondary
  target_iqn_of_iscsi_a_secondary                 = var.target_iqn_of_iscsi_a_secondary
  lun_id_of_iscsi_a_secondary                     = var.lun_id_of_iscsi_a_secondary

  #iSCSI-B Primary Target Policy
  name_of_iscsi_b_primary_target_policy           = "${var.name_prefix}-iSCSI-B-Primary-Target"
  description_of_iscsi_b_primary_target_policy    = "iSCSI-B Primary Target Policy"
  target_ip_of_iscsi_b_primary                    = var.target_ip_of_iscsi_b_primary
  iscsi_port_of_iscsi_b_primary                   = var.iscsi_port_of_iscsi_b_primary
  target_iqn_of_iscsi_b_primary                   = var.target_iqn_of_iscsi_b_primary
  lun_id_of_iscsi_b_primary                       = var.lun_id_of_iscsi_b_primary

  #iSCSI-B Secondary Target Policy
  name_of_iscsi_b_secondary_target_policy         = "${var.name_prefix}-iSCSI-B-Secondary-Target"
  description_of_iscsi_b_secondary_target_policy  = "iSCSI-B Secondary Target Policy"
  target_ip_of_iscsi_b_secondary                  = var.target_ip_of_iscsi_b_secondary
  iscsi_port_of_iscsi_b_secondary                 = var.iscsi_port_of_iscsi_b_secondary
  target_iqn_of_iscsi_b_secondary                 = var.target_iqn_of_iscsi_b_secondary
  lun_id_of_iscsi_b_secondary                     = var.lun_id_of_iscsi_b_secondary

  #Ethernet QoS Policy: MTU: 1500
  name_of_ethernet_qos_policy_mtu_1500          = "${var.name_prefix}-QoS-MTU_1500"
  description_of_ethernet_qos_policy_mtu_1500   = "Ethernet QoS Policy: MTU: 1500"
  mtu_1500                                      = var.mtu_1500
  class_of_service_mtu_1500                     = var.class_of_service_mtu_1500
  burst_mtu_1500                                = var.burst_mtu_1500
  priority_mtu_1500                             = var.priority_mtu_1500
  rate_limit_mtu_1500                           = var.rate_limit_mtu_1500

  #Ethernet QoS Policy: MTU: 9000
  name_of_ethernet_qos_policy_mtu_9000          = "${var.name_prefix}-QoS-MTU_9000"
  description_of_ethernet_qos_policy_mtu_9000   = "Ethernet QoS Policy: MTU: 9000"
  mtu_9000                                      = var.mtu_9000
  class_of_service_mtu_9000                     = var.class_of_service_mtu_9000
  burst_mtu_9000                                = var.burst_mtu_9000
  priority_mtu_9000                             = var.priority_mtu_9000
  rate_limit_mtu_9000                           = var.rate_limit_mtu_9000

  #Network Group Policy - Inband Management
  name_of_ethernet_network_group_policy_inband_mgmt         = "${var.name_prefix}-Inband-Mgmt-NetGrp"
  description_of_ethernet_network_group_policy_inband_mgmt  = "Network Group Policy - Inband Management"
  native_vlan_inband_mgmt                                   = var.native_vlan_inband_mgmt
  allowed_vlans_inband_mgmt                                 = var.allowed_vlans_inband_mgmt


  #Network Group Policy - Out of Band Management
  name_of_ethernet_network_group_policy_oob_mgmt            = "${var.name_prefix}-OOB-Mgmt-NetGrp"
  description_of_ethernet_network_group_policy_oob_mgmt     = "Network Group Policy - Out of Band Management"
  native_vlan_oob_mgmt                                      = var.native_vlan_oob_mgmt
  allowed_vlans_oob_mgmt                                    = var.allowed_vlans_oob_mgmt


  #Network Group Policy - iSCSI-A
  name_of_ethernet_network_group_policy_iscsi_a             = "${var.name_prefix}-iSCSI-A-NetGrp"
  description_of_ethernet_network_group_policy_iscsi_a      = "Network Group Policy - iSCSI-A"
  native_vlan_iscsi_a                                       = var.native_vlan_iscsi_a
  allowed_vlans_iscsi_a                                     = var.allowed_vlans_iscsi_a

  #Network Group Policy - iSCSI-B
  name_of_ethernet_network_group_policy_iscsi_b             = "${var.name_prefix}-iSCSI-B-NetGrp"
  description_of_ethernet_network_group_policy_iscsi_b      = "Network Group Policy - iSCSI-B"
  native_vlan_iscsi_b                                       = var.native_vlan_iscsi_b
  allowed_vlans_iscsi_b                                      = var.allowed_vlans_iscsi_b

  #Network Control Policy
  name_of_network_control_policy                            = "${var.name_prefix}-Network-Control-Policy"
  description_of_network_control_policy                     = "etwork Control Policy for ${var.name_prefix}"

  #Ethernet Adapter Policy for RHEL
  name_of_rhel_ethernet_adapter_policy                      = "${var.name_prefix}-Adapter-Policy"
  description_of_rhel_ethernet_adapter_policy               = "Adapter Policy for RHEL"

  #iSCSI-A Boot Policy
  name_of_iscsi_a_boot_policy                               = "${var.name_prefix}-iSCSI-A-Boot-Policy"
  description_of_iscsi_a_boot_policy                        = "iSCSI-A Boot Policy"
  iscsi_a_ip_pool_moid                                      = module.create_ip_pool-scsi-a.ip_pool_moid

  #iSCSI-B Boot Policy
  name_of_iscsi_b_boot_policy                               = "${var.name_prefix}-iSCSI-B-Boot-Policy"
  description_of_iscsi_b_boot_policy                        = "iSCSI-B Boot Policy"
  iscsi_b_ip_pool_moid                                      = module.create_ip_pool-iscsi-b.ip_pool_moid

  #LAN Connectivity Policy
  name_of_lan_connectivty_policy                            = "${var.name_prefix}-LAN-Connectivity-Policy"
  description_of_lan_connectivty_policy                     = "iSCSI LAN Connectivity Policy"
  iqn_pool_moid_for_lan_connectivty                         = module.create_iqn_pool.iqn_pool_moid
  moid_of_mac_pool_a                                        = module.create_mac_pool-a.mac_pool_moid
  moid_of_mac_pool_b                                        = module.create_mac_pool-b.mac_pool_moid
}

