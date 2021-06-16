variable "org_moid" {
}

#A policy for all the physical ports of the Fabric Interconnect
variable "name_of_fabric_port_policy" {
}


variable "description_of_fabric_port_policy" {
  default = ""
}


variable "fi_model" {
}



#Configure range of unified ports as FC/Ethernet
variable "fc_port_id_end" {
}


variable "fc_port_id_start" {
}


variable "slot_id_of_switch_for_fc_ports" {
}




#Create Server Ports
variable "list_of_server_ports" {
  type=list
}


variable "slot_id_of_switch_for_server_ports" {
}




#Configure Ethernet uplink port-channel on the collection of ports
variable "list_of_ports_for_ethernet_uplink" {
  type=list
}


variable "admin_speed_for_ethernet_uplink_port_channel" {
}


variable "port_channel_id_for_ethernet_uplink" {
}


variable "slot_id_of_ports_for_ethernet_uplink" {
}



#Configure FC uplink port-channel on the collection of ports
variable "list_of_ports_for_fc_uplink" {
    type=list
}


variable "admin_speed_for_fc_uplink_port_channel" {
}


variable "port_channel_id_for_fc_uplink" {
}


variable "correspnding_vsan_id" {
}


variable "slot_id_of_ports_for_fc_uplink" {
}



variable "switch_profile_moid" {
}