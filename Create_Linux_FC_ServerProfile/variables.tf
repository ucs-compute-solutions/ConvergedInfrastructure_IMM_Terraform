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



#WWNN Pool
variable "wwnn_pool_start" {
  default = "20:00:00:25:B5:A4:00:00"
}

variable "wwnn_pool_size" {
  default = 64
}


#WWPN Pools
variable "wwpn_pool_start_on_fi_a" {
  default = "20:00:00:25:B5:A4:0A:00"
}

variable "wwpn_pool_size_on_fi_a" {
  default = 64
}

variable "wwpn_pool_start_on_fi_b" {
  default = "20:00:00:25:B5:A4:0B:00"
}

variable "wwpn_pool_size_on_fi_b" {
  default = 64
}


#IMC Access Policy
variable "vlan_for_cimc_access" {
}




#Boot Policy for Fibre Channel Boot
variable "boot_mode" {
  description = "Either put Uefi or Legacy"
  default     = "Uefi"
}

variable "lun_id" {
  default = 0
}

variable "san_boot_device_1_name" {
  default = "CT0_FC0"
}

variable "san_boot_device_2_name" {
  default = "CT1_FC0"
}

variable "san_boot_device_3_name" {
  default = "CT0_FC1"
}

variable "san_boot_device_4_name" {
  default = "CT1_FC1"
}

variable "san_boot_target_1_wwpn" {
}

variable "san_boot_target_2_wwpn" {
}

variable "san_boot_target_3_wwpn" {
}

variable "san_boot_target_4_wwpn" {
}




#Ethernet QoS Policy
variable "mtu" {
  default = 9000
}

variable "class_of_service" {
  default = 0
}

variable "burst" {
  default = 1024
}

variable "priority" {
  default = "Best Effort"
}

variable "rate_limit" {
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




#Fibre Channel Network policy: SAN-A
variable "fcoe_vlan_id_SAN-A" {
}

variable "vsan_id_SAN-A" {
}


#Fibre Channel Network policy: SAN-B
variable "fcoe_vlan_id_SAN-B" {
}

variable "vsan_id_SAN-B" {
}