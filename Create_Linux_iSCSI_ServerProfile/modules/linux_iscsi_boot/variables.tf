variable "org_moid" {
}



#IMC Access Policy
variable "name_of_imc_access_policy" {
}

variable "description_of_imc_access_policy" {
  default = ""
}

variable "cimc_access_vlan" {
}

variable "ip_pool_for_cimc_access" {
}




#Boot Policy for iSCSI Boot
variable "boot_policy_name" {
}

variable "boot_policy_description" {
  default = ""
}

variable "boot_mode" {
  default     = "Uefi"
}





#BIOS Policy
variable "name_of_bios_policy" {
}

variable "description_of_bios_policy" {
  default= ""
}




#iSCSI Adapter Policy
variable "name_of_iscsi_adapter_policy" {
}

variable "description_of_iscsi_adapter_policy" {
  default = ""
}

variable "tcp_connection_time_out" {
  default = 15
}

variable "dhcp_timeout" {
  default = 60
}

variable "lun_busy_retry_count" {
  default = 15
}




#iSCSI-A Primary Target Policy
variable "name_of_iscsi_a_primary_target_policy" {
}

variable "description_of_iscsi_a_primary_target_policy" {
  default = ""
}

variable "target_ip_of_iscsi_a_primary" {
}

variable "iscsi_port_of_iscsi_a_primary" {
}

variable "target_iqn_of_iscsi_a_primary" {
}

variable "lun_id_of_iscsi_a_primary" {
}





#iSCSI-A Secondary Target Policy
variable "name_of_iscsi_a_secondary_target_policy" {
}

variable "description_of_iscsi_a_secondary_target_policy" {
  default = ""
}

variable "target_ip_of_iscsi_a_secondary" {
}

variable "iscsi_port_of_iscsi_a_secondary" {
}

variable "target_iqn_of_iscsi_a_secondary" {
}

variable "lun_id_of_iscsi_a_secondary" {
}






#iSCSI-B Primary Target Policy
variable "name_of_iscsi_b_primary_target_policy" {
}

variable "description_of_iscsi_b_primary_target_policy" {
  default = ""
}

variable "target_ip_of_iscsi_b_primary" {
}

variable "iscsi_port_of_iscsi_b_primary" {
}

variable "target_iqn_of_iscsi_b_primary" {
}

variable "lun_id_of_iscsi_b_primary" {
}





#iSCSI-B Secondary Target Policy
variable "name_of_iscsi_b_secondary_target_policy" {
}

variable "description_of_iscsi_b_secondary_target_policy" {
  default = ""
}

variable "target_ip_of_iscsi_b_secondary" {
}

variable "iscsi_port_of_iscsi_b_secondary" {
}

variable "target_iqn_of_iscsi_b_secondary" {
}

variable "lun_id_of_iscsi_b_secondary" {
}




#Ethernet QoS Policy: MTU: 1500
variable "name_of_ethernet_qos_policy_mtu_1500" {
}

variable "description_of_ethernet_qos_policy_mtu_1500" {
  default = ""
}

variable "mtu_1500" {
  default = 1500
}

variable "class_of_service_mtu_1500" {
  default = 0
}

variable "burst_mtu_1500" {
  default = 1024
}

variable "priority_mtu_1500" {
  default = "Best Effort"
}

variable "rate_limit_mtu_1500" {
  default = 0
}





#Ethernet QoS Policy: MTU: 9000
variable "name_of_ethernet_qos_policy_mtu_9000" {
}

variable "description_of_ethernet_qos_policy_mtu_9000" {
  default = ""
}

variable "mtu_9000" {
  default = 9000
}

variable "class_of_service_mtu_9000" {
  default = 0
}

variable "burst_mtu_9000" {
  default = 1024
}

variable "priority_mtu_9000" {
  default = "Best Effort"
}

variable "rate_limit_mtu_9000" {
  default = 0
}



#Network Group Policy - Inband Management
variable "name_of_ethernet_network_group_policy_inband_mgmt" {
}

variable "description_of_ethernet_network_group_policy_inband_mgmt" {
  default = ""
}

variable "native_vlan_inband_mgmt" {
}

variable "allowed_vlans_inband_mgmt"{
}




#Network Group Policy - Out of Band Management
variable "name_of_ethernet_network_group_policy_oob_mgmt" {
}

variable "description_of_ethernet_network_group_policy_oob_mgmt" {
  default = ""
}

variable "native_vlan_oob_mgmt" {
}

variable "allowed_vlans_oob_mgmt"{
}




#Network Group Policy - iSCSI-A
variable "name_of_ethernet_network_group_policy_iscsi_a" {
}

variable "description_of_ethernet_network_group_policy_iscsi_a" {
  default = ""
}

variable "native_vlan_iscsi_a" {
}

variable "allowed_vlans_iscsi_a"{
}




#Network Group Policy - iSCSI-B
variable "name_of_ethernet_network_group_policy_iscsi_b" {
}

variable "description_of_ethernet_network_group_policy_iscsi_b" {
  default = ""
}

variable "native_vlan_iscsi_b" {
}

variable "allowed_vlans_iscsi_b"{
}





#Network Control Policy
variable "name_of_network_control_policy" {
}


variable "description_of_network_control_policy" {
  default = ""
}




#Ethernet Adapter Policy for RHEL
variable "name_of_rhel_ethernet_adapter_policy" {
}

variable "description_of_rhel_ethernet_adapter_policy" {
  default = ""
}






#iSCSI-A Boot Policy
variable "name_of_iscsi_a_boot_policy" {
}

variable "description_of_iscsi_a_boot_policy" {
  default = ""
}

variable "iscsi_a_ip_pool_moid" {
}





#iSCSI-B Boot Policy
variable "name_of_iscsi_b_boot_policy" {
}

variable "description_of_iscsi_b_boot_policy" {
  default = ""
}

variable "iscsi_b_ip_pool_moid" {
}



#LAN Connectivity Policy
variable "name_of_lan_connectivty_policy" {
}

variable "description_of_lan_connectivty_policy" {
  default = ""
}

variable "iqn_pool_moid_for_lan_connectivty" {
}

variable "moid_of_mac_pool_a" {
}

variable "moid_of_mac_pool_b" {
}