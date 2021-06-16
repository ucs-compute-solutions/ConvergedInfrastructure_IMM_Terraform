variable "organization_name" {
  default = "default"
}

variable "name_prefix" {
  default = "IMM"
}

variable "fi_model" {
  default = "UCS-FI-6454"
}

variable "serial_number_of_fi-a" {
}

variable "serial_number_of_fi-b" {
}


variable "name_of_ucs_domain_profile" {
}


#Policy for all the physical ports of the Fabric Interconnect -A
#Configure range of unified ports as FC/Ethernet
variable "fc_port_id_start_on-fi-a" {
}

variable "fc_port_id_end_on-fi-a" {
}

variable "slot_id_of_switch_for_fc_ports_on-fi-a" {
  default = 1
}


#Create Server Ports
variable "list_of_server_ports_on-fi-a" {
  type = list
}

variable "slot_id_of_switch_for_server_ports_on-fi-a" {
  default = 1
}


#Configure Ethernet uplink port-channel on the collection of ports
variable "list_of_ports_for_ethernet_uplink_on-fi-a" {
}

variable "admin_speed_for_ethernet_uplink_port_channel_on-fi-a" {
}

variable "port_channel_id_for_ethernet_uplink_on-fi-a" {
}

variable "slot_id_of_ports_for_ethernet_uplink_on-fi-a" {
}



#Configure FC uplink port-channel on the collection of ports
variable "list_of_ports_for_fc_uplink_on-fi-a" {
}

variable "admin_speed_for_fc_uplink_port_channel_on-fi-a" {
}

variable "port_channel_id_for_fc_uplink_on-fi-a" {
}

variable "correspnding_vsan_id_on-fi-a" {
}

variable "slot_id_of_ports_for_fc_uplink_on-fi-a" {
}




#sec
#Policy for all the physical ports of the Fabric Interconnect -A
#Configure range of unified ports as FC/Ethernet
variable "fc_port_id_start_on-fi-b" {
}

variable "fc_port_id_end_on-fi-b" {
}

variable "slot_id_of_switch_for_fc_ports_on-fi-b" {
  default = 1
}


#Create Server Ports
variable "list_of_server_ports_on-fi-b" {
  type = list
}

variable "slot_id_of_switch_for_server_ports_on-fi-b" {
  default = 1
}


#Configure Ethernet uplink port-channel on the collection of ports
variable "list_of_ports_for_ethernet_uplink_on-fi-b" {
}

variable "admin_speed_for_ethernet_uplink_port_channel_on-fi-b" {
}

variable "port_channel_id_for_ethernet_uplink_on-fi-b" {
}

variable "slot_id_of_ports_for_ethernet_uplink_on-fi-b" {
}



#Configure FC uplink port-channel on the collection of ports
variable "list_of_ports_for_fc_uplink_on-fi-b" {
}

variable "admin_speed_for_fc_uplink_port_channel_on-fi-b" {
}

variable "port_channel_id_for_fc_uplink_on-fi-b" {
}

variable "correspnding_vsan_id_on-fi-b" {
}

variable "slot_id_of_ports_for_fc_uplink_on-fi-b" {
}




#Configuration details for all VLANs in Fabric Interconnects
variable "native_vlan" {
  default = 1
}

variable "vlan_details_for_fabric_interconnects" {
}



#Policy for VSAN to be deployed on the Fabric Interconnect - A
variable "name_of_vsan_on-fi-a" {
  default = "VSAN-A"
}


variable "fcoe_vlan_id_on-fi-a" {
}


variable "correspnding_vsan-fcoe_id_on-fi-a" {
}



#Policy for VSAN to be deployed on the Fabric Interconnect - B
variable "name_of_vsan_on-fi-b" {
  default = "VSAN-B"
}


variable "fcoe_vlan_id_on-fi-b" {
}


variable "correspnding_vsan-fcoe_id_on-fi-b" {
}



#Policy to configure the NTP Servers
variable "list_of_ntp_server" {
  default = ["time1.google.com", "time2.google.com"]
}


variable "timezone" {
  default = "America/Los_Angeles"
}



#Update DNS settings
variable "preferred_ipv4_dns_server" {
}


variable "alternate_ipv4_dns_server" {
  default = ""
}



#Configure Quality of Service (QoS) for FIs
variable "mtu_for_best_effort_class_of_service" {
  default = 9216
}
