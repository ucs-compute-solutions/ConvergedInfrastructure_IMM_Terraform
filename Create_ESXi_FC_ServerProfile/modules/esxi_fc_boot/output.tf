#IMC Access Policy
output "intersight_access_policy_moid" {
  value = intersight_access_policy.imc_access_policy.moid
}

#Boot Policy for Fibre Channel Boot
output "boot_policy_for_fc_moid" {
  value = intersight_boot_precision_policy.boot_policy_for_fc_boot_from_san.moid
}


#BIOS Policy
output "bios_policy_moid" {
  value = intersight_bios_policy.bios_policy.moid
}


#Ethernet QoS Policy
output "ethernet_qos_policy_mtu_9000_moid" {
  value = intersight_vnic_eth_qos_policy.ethernet_qos_policy_mtu_9000.moid
}


#Network Control Policy
output "ethernet_network_control_policy_moid" {
  value = intersight_fabric_eth_network_control_policy.ethernet_network_control_policy.moid
}



#Ethernet Adapter Policy for ESXi
output "esxi_ethernet_adapter_policy_moid" {
  value = intersight_vnic_eth_adapter_policy.esxi_ethernet_adapter_policy.moid
}


#Network Group Policy - VLAN details of vNICs assigned to virtual switches for Management and NFS VLANs
output "ethernet_network_group_policy_inband_mgmt_moid" {
  value = intersight_fabric_eth_network_group_policy.ethernet_network_group_policy_management.moid
}



#Network Group Policy - VLANs details of vNIC assigned to VDS for  vMotion and traffic VLANs
output "ethernet_network_group_policy_oob_mgmt_moid" {
  value = intersight_fabric_eth_network_group_policy.ethernet_network_group_policy_VDS.moid
}



#LAN Connectivity Policy
output "lan_connectivity_policy_moid" {
  value = intersight_vnic_lan_connectivity_policy.lan_connectivity_fi_attached.moid
}



#Fibre Channel Network policy: SAN-A
output "fc_network_policy_san-a_moid" {
  value = intersight_vnic_fc_network_policy.fc_network_policy_san-a.moid
}



#Fibre Channel Network policy: SAN-B
output "fc_network_policy_san-b_moid" {
  value = intersight_vnic_fc_network_policy.fc_network_policy_san-b.moid
}



#Fibre Channel Quality of Service (QoS) policy
output "fc_qos_policy_moid" {
  value = intersight_vnic_fc_qos_policy.fc_qos_policy.moid
}


#Fibre Channel Adapter policy
output "fc_adapter_policy_moid" {
  value = intersight_vnic_fc_adapter_policy.fc_adapter_policy.moid
}


#SAN connectivity policy
output "san_connectivity_policy_moid" {
  value = intersight_vnic_san_connectivity_policy.san_connectivity_policy.moid
}