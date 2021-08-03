
module "policies_for_esxi_fc_boot" {
  source   = "./modules/esxi_fc_boot"
  org_moid = module.org_details.org_moid

  #IMC Access Policy
  name_of_imc_access_policy        = "${var.name_prefix}-IMC-Access-Policy"
  description_of_imc_access_policy = "IMC Access Policy for ${var.name_prefix}"
  cimc_access_vlan                 = var.vlan_for_cimc_access
  ip_pool_for_cimc_access          = module.create_ip_pool_mgmt.ip_pool_moid

  #Boot Policy for Fibre Channel Boot
  boot_policy_name        = "${var.name_prefix}-Boot-Policy"
  boot_policy_description = "Boot Policy for Fibre Channel Boot"
  boot_mode               = var.boot_mode
  lun_id                  = var.lun_id
  san_boot_device_1_name  = var.san_boot_device_1_name
  san_boot_device_2_name  = var.san_boot_device_2_name
  san_boot_device_3_name  = var.san_boot_device_3_name
  san_boot_device_4_name  = var.san_boot_device_4_name
  san_boot_target_1_wwpn  = var.san_boot_target_1_wwpn
  san_boot_target_2_wwpn  = var.san_boot_target_2_wwpn
  san_boot_target_3_wwpn  = var.san_boot_target_3_wwpn
  san_boot_target_4_wwpn  = var.san_boot_target_4_wwpn

  #BIOS Policy
  name_of_bios_policy        = "${var.name_prefix}-BIOS-Policy"
  description_of_bios_policy = "BIOS Policy for ${var.name_prefix}"

  #Ethernet QoS Policy
  name_of_ethernet_qos_policy_mtu_9000        = "${var.name_prefix}-Ethernet-QoS-Policy"
  description_of_ethernet_qos_policy_mtu_9000 = "Ethernet QoS Policy for ${var.name_prefix}"
  mtu_9000                                = var.mtu
  class_of_service_mtu_9000                   = var.class_of_service
  burst_mtu_9000                              = var.burst
  priority_mtu_9000                           = var.priority
  rate_limit_mtu_9000                         = var.rate_limit

  #Network Control Policy
  name_of_network_control_policy        = "${var.name_prefix}-Network-Control-Policy"
  description_of_network_control_policy = "Network Control Policy for ${var.name_prefix}"

  #Ethernet Adapter Policy for ESXi
  name_of_esxi_ethernet_adapter_policy        = "${var.name_prefix}-Adapter-Policy"
  description_of_esxi_ethernet_adapter_policy = "Adapter Policy for ESXi"

  #Network Group Policy - VLAN details of vNICs assigned to virtual switches for Management and NFS VLANs
  name_of_ethernet_network_group_policy_for_management        = "${var.name_prefix}-Mgmt-NetGrp"
  description_of_ethernet_network_group_policy_for_management = "Network Group Policy - Management"
  native_vlan_for_mgmt_vnic                                   = var.native_vlan_for_mgmt_vnic
  allowed_vlans_for_mgmt_vnic                                 = var.allowed_vlans_for_mgmt_vnic

  #Network Group Policy - VLANs details of vNIC assigned to VDS for  vMotion and traffic VLANs
  name_of_ethernet_network_group_policy_for_VDS        = "${var.name_prefix}-VDS-NetGrp"
  description_of_ethernet_network_group_policy_for_VDS = "Network Group Policy - VDS"
  native_vlan_for_vnic_assigned_for_VDS                = var.native_vlan_for_vnic_assigned_for_VDS
  allowed_vlans_for_vnic_assigned_for_VDS              = var.allowed_vlans_for_vnic_assigned_for_VDS

  #LAN Connectivity Policy
  name_of_lan_connectivty_policy        = "${var.name_prefix}-LAN-Connectivity-Policy"
  description_of_lan_connectivty_policy = "LAN Connectivity Policy for Fibre Channel Boot"
  moid_of_mac_pool_a                    = module.create_mac_pool-a.mac_pool_moid
  moid_of_mac_pool_b                    = module.create_mac_pool-b.mac_pool_moid

  #Fibre Channel Network policy: SAN-A
  name_of_fc_network_policy_san-a        = "${var.name_prefix}-FC-Network-SAN-A"
  description_of_fc_network_policy_san-a = "SAN-A Fibre Channel Network polic"
  fcoe_vlan_id_SAN-A                     = var.fcoe_vlan_id_SAN-A
  vsan_id_SAN-A                          = var.vsan_id_SAN-A

  #Fibre Channel Network policy: SAN-B
  name_of_fc_network_policy_san-b        = "${var.name_prefix}-FC-Network-SAN-B"
  description_of_fc_network_policy_san-b = "SAN-B Fibre Channel Network polic"
  fcoe_vlan_id_SAN-B                     = var.fcoe_vlan_id_SAN-B
  vsan_id_SAN-B                          = var.vsan_id_SAN-B

  #Fibre Channel Quality of Service (QoS) policy
  name_of_fc_qos_policy        = "${var.name_prefix}-FC-QoS-Policy"
  description_of_fc_qos_policy = "FC QoS Policy for ${var.name_prefix}"

  #Fibre Channel Adapter policy
  name_of_fc_adapter_policy        = "${var.name_prefix}-FC-Adapter-Policy"
  description_of_fc_adapter_policy = "FC Adapter Policy for ${var.name_prefix}"

  #SAN connectivity policy
  name_of_san_connectivity_policy        = "${var.name_prefix}-SAN-Connectivity-Policy"
  description_of_san_connectivity_policy = "SAN Connectivity Policy for Fibre Channel Boot"
  moid_of_wwnn_pool                      = module.create_wwnn_pool.fc_pool_moid
  moid_of_wwpn_pool-a                    = module.create_wwpn_pool-a.fc_pool_moid
  moid_of_wwpn_pool-b                    = module.create_wwpn_pool-b.fc_pool_moid
}
