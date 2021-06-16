variable "org_moid" {
}

#Multicast settings for all the Virtual LAN networks
variable "name_of_fabric_multicast_policy" {
}


variable "description_of_fabric_multicast_policy" {
  default = ""
}


#Policy for all the VLANs to be deployed on the Fabric Interconnect.
variable "name_of_fabric_eth_network_policy" {
}


variable "description_of_fabric_eth_network_policy" {
  default = ""
}


variable "vlan_details_for_fabric_interconnects" {
}

variable "native_vlan" {
  default = 1
}


variable "switch_profile_moid_of_fi-a" {
}


variable "switch_profile_moid_of_fi-b" {
}
