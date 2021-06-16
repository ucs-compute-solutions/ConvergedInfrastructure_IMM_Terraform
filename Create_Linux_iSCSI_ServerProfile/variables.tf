variable "organization_name" {
  default = "default"
}

variable "name_prefix" {
  default = "IMM"
}


variable "server_name_to_profile_mapping" {
  type = map
}



# MAC Pools
variable "mac_pool_start_on_fi_a" {
  default = "00:25:B5:A4:0A:00"
}

variable "size_of_mac_pool_on_fi_a" {
  default = 1000
}

variable "mac_pool_start_on_fi_b" {
  default = "00:25:B5:A4:0B:00"
}

variable "size_of_mac_pool_on_fi_b" {
  default = 1000
}

#IP Pool
variable "ip_pool_start_for_management_access" {
}

variable "size_of_ip_pool_for_management_access" {
}

variable "gateway_mgmt" {
}

variable "netmask_mgmt" {
}

variable "primary_dns_mgmt" {
}

variable "secondary_dns_mgmt" {
}




# IP Pool - iSCSI-A
variable "ip_pool_start_iscsi_a" {
}

variable "size_of_ip_pool_iscsi_a" {
}

variable "gateway_iscsi_a" {
}

variable "netmask_iscsi_a" {
}

variable "primary_dns_iscsi_a" {
}

variable "secondary_dns_iscsi_a" {
}



# IP Pool - iSCSI-B
variable "ip_pool_start_iscsi_b" {
}

variable "size_of_ip_pool_iscsi_b" {
}

variable "gateway_iscsi_b" {
}

variable "netmask_iscsi_b" {
}

variable "primary_dns_iscsi_b" {
}

variable "secondary_dns_iscsi_b" {
}




# IQN Pool
variable "prefix_for_iqn" {
  default = "iqn.2010-11.com.cisco"
}


variable "suffix_for_iqn" {
  default = "ucs-host"
}


variable "iqn_start" {
  default = "01"
}

variable "size_of_iqn_pool" {
  default = 100
}



#IMC Access Policy
variable "vlan_for_cimc_access" {
}




#Boot Policy for iSCSI Boot
variable "boot_mode" {
  description = "Either put Uefi or Legacy"
  default     = "Uefi"
}


#iSCSI Adapter Policy
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
variable "target_ip_of_iscsi_a_primary" {
}

variable "iscsi_port_of_iscsi_a_primary" {
}

variable "target_iqn_of_iscsi_a_primary" {
}

variable "lun_id_of_iscsi_a_primary" {
}



#iSCSI-A Secondary Target Policy
variable "target_ip_of_iscsi_a_secondary" {
}

variable "iscsi_port_of_iscsi_a_secondary" {
}

variable "target_iqn_of_iscsi_a_secondary" {
}

variable "lun_id_of_iscsi_a_secondary" {
}



#iSCSI-B Primary Target Policy
variable "target_ip_of_iscsi_b_primary" {
}

variable "iscsi_port_of_iscsi_b_primary" {
}

variable "target_iqn_of_iscsi_b_primary" {
}

variable "lun_id_of_iscsi_b_primary" {
}



#iSCSI-B Secondary Target Policy
variable "target_ip_of_iscsi_b_secondary" {
}

variable "iscsi_port_of_iscsi_b_secondary" {
}

variable "target_iqn_of_iscsi_b_secondary" {
}

variable "lun_id_of_iscsi_b_secondary" {
}



#Ethernet QoS Policy: MTU: 1500
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
variable "native_vlan_inband_mgmt" {
}

variable "allowed_vlans_inband_mgmt" {
}



#Network Group Policy - Out of Band Management
variable "native_vlan_oob_mgmt" {
}

variable "allowed_vlans_oob_mgmt" {
}



#Network Group Policy - iSCSI-A
variable "native_vlan_iscsi_a" {
}

variable "allowed_vlans_iscsi_a" {
}



#Network Group Policy - iSCSI-B
variable "native_vlan_iscsi_b" {
}

variable "allowed_vlans_iscsi_b" {
}

