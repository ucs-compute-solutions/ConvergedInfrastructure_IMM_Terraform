#IMC Access Policy
output "intersight_access_policy_moid" {
  value = intersight_access_policy.imc_access_policy.moid
}


#Boot Policy for iSCSI Boot
output "boot_policy_for_iscsi_moid" {
  value = intersight_boot_precision_policy.boot_policy_for_iscsi_boot_from_san.moid
}


#BIOS Policy
output "bios_policy_moid" {
  value = intersight_bios_policy.bios_policy.moid
}


#iSCSI Adapter Policy
output "iscsi_adapter_policy_moid" {
  value= intersight_vnic_iscsi_adapter_policy.iscsi_adapter_policy.moid
}



#iSCSI-A Primary Target Policy
output "iscsi_a_primary_target_moid" {
  value = intersight_vnic_iscsi_static_target_policy.iscsi_a_primary_target.moid
}



#iSCSI-A Secondary Target Policy
output "iscsi_a_secondary_target_moid" {
  value = intersight_vnic_iscsi_static_target_policy.iscsi_a_secondary_target.moid
}



#iSCSI-B Primary Target Policy
output "iscsi_b_primary_target_moid" {
  value = intersight_vnic_iscsi_static_target_policy.iscsi_b_primary_target.moid
}


#iSCSI-B Secondary Target Policy
output "iscsi_b_secondary_target_moid" {
  value = intersight_vnic_iscsi_static_target_policy.iscsi_b_secondary_target.moid
}



#Ethernet QoS Policy: MTU: 1500
output "ethernet_qos_policy_mtu_1500_moid" {
  value = intersight_vnic_eth_qos_policy.ethernet_qos_policy_mtu_1500.moid
}



#Ethernet QoS Policy: MTU: 9000
output "ethernet_qos_policy_mtu_9000_moid" {
  value = intersight_vnic_eth_qos_policy.ethernet_qos_policy_mtu_9000.moid
}



#Network Group Policy - Inband Management
output "ethernet_network_group_policy_inband_mgmt_moid" {
  value = intersight_fabric_eth_network_group_policy.ethernet_network_group_policy_inband_mgmt.moid
}



#Network Group Policy - Out of Band Management
output "ethernet_network_group_policy_oob_mgmt_moid" {
  value = intersight_fabric_eth_network_group_policy.ethernet_network_group_policy_oob_mgmt.moid
}



#Network Group Policy - iSCSI-A
output "ethernet_network_group_policy_iscsi_a_moid" {
  value = intersight_fabric_eth_network_group_policy.ethernet_network_group_policy_iscsi_a.moid
}



#Network Group Policy - iSCSI-B
output "ethernet_network_group_policy_iscsi_b_moid" {
  value = intersight_fabric_eth_network_group_policy.ethernet_network_group_policy_iscsi_b.moid
}



#Network Control Policy
output "ethernet_network_control_policy_moid" {
  value = intersight_fabric_eth_network_control_policy.ethernet_network_control_policy.moid
}


#Ethernet Adapter Policy for RHEL
output "rhel_ethernet_adapter_policy_moid" {
  value = intersight_vnic_eth_adapter_policy.rhel_ethernet_adapter_policy.moid
}


#iSCSI-A Boot Policy
output "iscsi_a_boot_policy_moid" {
  value = intersight_vnic_iscsi_boot_policy.iscsi_a_boot_policy.moid
}


#iSCSI-B Boot Policy
output "iscsi_b_boot_policy_moid" {
  value = intersight_vnic_iscsi_boot_policy.iscsi_b_boot_policy.moid
}


#LAN Connectivity Policy
output "lan_connectivity_policy_moid" {
  value = intersight_vnic_lan_connectivity_policy.lan_connectivity_fi_attached.moid
}