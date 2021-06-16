variable "org_moid" {
}


#Policy for all the VSANs to be deployed on the Fabric Interconnect.
variable "name_of_fabric_fc_network_policy" {
}

variable "description_of_fabric_fc_network_policy" {
  default = ""
}



#Configuration for all VSANs
variable "name_of_vsan" {
}

variable "fcoe_vlan_id" {
}

variable "correspnding_vsan_id" {
}


variable "switch_profile_moid" {
}