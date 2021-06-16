
#Port Policy for FI-A
module "port_policy_on-fi-a" {
  source                                          = "./modules/port_policy"
  org_moid                                        = module.org_details.org_moid

  #Policy for all the physical ports of the Fabric Interconnect
  name_of_fabric_port_policy                      = "${var.name_prefix}-Port-Policy-FI-A"
  description_of_fabric_port_policy               = "Port policy for ${var.name_prefix} on FI-A"
  fi_model                                        = var.fi_model


  #Configure range of unified ports as FC/Ethernet
  fc_port_id_start                                = var.fc_port_id_start_on-fi-a
  fc_port_id_end                                  = var.fc_port_id_end_on-fi-a
  slot_id_of_switch_for_fc_ports                  = var.slot_id_of_switch_for_fc_ports_on-fi-a


  #Create Server Ports  in FI-A
  list_of_server_ports                            = var.list_of_server_ports_on-fi-a
  slot_id_of_switch_for_server_ports              = var.slot_id_of_switch_for_server_ports_on-fi-a


  #Configure Ethernet uplink port-channel on the collection of ports
  list_of_ports_for_ethernet_uplink               = var.list_of_ports_for_ethernet_uplink_on-fi-a
  admin_speed_for_ethernet_uplink_port_channel    = var.admin_speed_for_ethernet_uplink_port_channel_on-fi-a
  port_channel_id_for_ethernet_uplink             = var.port_channel_id_for_ethernet_uplink_on-fi-a
  slot_id_of_ports_for_ethernet_uplink            = var.slot_id_of_ports_for_ethernet_uplink_on-fi-a


  #Configure FC uplink port-channel on the collection of ports
  list_of_ports_for_fc_uplink                     = var.list_of_ports_for_fc_uplink_on-fi-a
  admin_speed_for_fc_uplink_port_channel          = var.admin_speed_for_fc_uplink_port_channel_on-fi-a
  port_channel_id_for_fc_uplink                   = var.port_channel_id_for_fc_uplink_on-fi-a
  correspnding_vsan_id                            = var.correspnding_vsan_id_on-fi-a
  slot_id_of_ports_for_fc_uplink                  = var.slot_id_of_ports_for_fc_uplink_on-fi-a

  switch_profile_moid                             = intersight_fabric_switch_profile.fabric_switch_profile_fi-a.moid
}




#Port Policy for FI-B
module "port_policy_on-fi-b" {
  source                                          = "./modules/port_policy"
  org_moid                                        = module.org_details.org_moid

  #Policy for all the physical ports of the Fabric Interconnect
  name_of_fabric_port_policy                      = "${var.name_prefix}-Port-Policy-FI-B"
  description_of_fabric_port_policy               = "Port policy for ${var.name_prefix} on FI-B"
  fi_model                                        = var.fi_model


  #Configure range of unified ports as FC/Ethernet
  fc_port_id_start                                = var.fc_port_id_start_on-fi-b
  fc_port_id_end                                  = var.fc_port_id_end_on-fi-b
  slot_id_of_switch_for_fc_ports                  = var.slot_id_of_switch_for_fc_ports_on-fi-b


  #Create Server Ports  in FI-A
  list_of_server_ports                            = var.list_of_server_ports_on-fi-b
  slot_id_of_switch_for_server_ports              = var.slot_id_of_switch_for_server_ports_on-fi-b


  #Configure Ethernet uplink port-channel on the collection of ports
  list_of_ports_for_ethernet_uplink               = var.list_of_ports_for_ethernet_uplink_on-fi-b
  admin_speed_for_ethernet_uplink_port_channel    = var.admin_speed_for_ethernet_uplink_port_channel_on-fi-b
  port_channel_id_for_ethernet_uplink             = var.port_channel_id_for_ethernet_uplink_on-fi-b
  slot_id_of_ports_for_ethernet_uplink            = var.slot_id_of_ports_for_ethernet_uplink_on-fi-b


  #Configure FC uplink port-channel on the collection of ports
  list_of_ports_for_fc_uplink                     = var.list_of_ports_for_fc_uplink_on-fi-b
  admin_speed_for_fc_uplink_port_channel          = var.admin_speed_for_fc_uplink_port_channel_on-fi-b
  port_channel_id_for_fc_uplink                   = var.port_channel_id_for_fc_uplink_on-fi-b
  correspnding_vsan_id                            = var.correspnding_vsan_id_on-fi-b
  slot_id_of_ports_for_fc_uplink                  = var.slot_id_of_ports_for_fc_uplink_on-fi-b

  switch_profile_moid                             = intersight_fabric_switch_profile.fabric_switch_profile_fi-b.moid
}


#Policy for all the VLANs to be deployed on the Fabric Interconnect.
module "vlans_for_fabric_interconnects" {
  source                                    = "./modules/vlan_policy"
  org_moid                                  = module.org_details.org_moid

  #Multicast settings for all the Virtual LAN networks
  name_of_fabric_multicast_policy           = "${var.name_prefix}-Multicast-Policy"
  description_of_fabric_multicast_policy    = "Multicast settings for all the Virtual LAN networks"

  #Policy for all the VLANs to be deployed on the Fabric Interconnect.
  name_of_fabric_eth_network_policy         = "${var.name_prefix}-VLAN-Policy"
  description_of_fabric_eth_network_policy  = "Policy for all the VLANs to be deployed on the Fabric Interconnect"

  #Configuration for all VLANs
  native_vlan                               = var.native_vlan
  vlan_details_for_fabric_interconnects     = var.vlan_details_for_fabric_interconnects

  switch_profile_moid_of_fi-a               = intersight_fabric_switch_profile.fabric_switch_profile_fi-a.moid
  switch_profile_moid_of_fi-b               = intersight_fabric_switch_profile.fabric_switch_profile_fi-b.moid
}



#Policy for VSAN to be deployed on the Fabric Interconnect - A
module "vsan_for_fabric_interconnects-a" {
  source                                    = "./modules/vsan_policy"
  org_moid                                  = module.org_details.org_moid

  name_of_fabric_fc_network_policy          = "${var.name_prefix}-VSAN-Policy-FI-A"
  description_of_fabric_fc_network_policy   = "Policy for VSAN to be deployed on the Fabric Interconnect - A"
  name_of_vsan                              = var.name_of_vsan_on-fi-a
  fcoe_vlan_id                              = var.fcoe_vlan_id_on-fi-a
  correspnding_vsan_id                      = var.correspnding_vsan-fcoe_id_on-fi-a

  switch_profile_moid                       = intersight_fabric_switch_profile.fabric_switch_profile_fi-a.moid
}



#Policy for VSAN to be deployed on the Fabric Interconnect - B
module "vsan_for_fabric_interconnects-b" {
  source                                    = "./modules/vsan_policy"
  org_moid                                  = module.org_details.org_moid

  name_of_fabric_fc_network_policy          = "${var.name_prefix}-VSAN-Policy-FI-B"
  description_of_fabric_fc_network_policy   = "Policy for VSAN to be deployed on the Fabric Interconnect - B"
  name_of_vsan                              = var.name_of_vsan_on-fi-b
  fcoe_vlan_id                              = var.fcoe_vlan_id_on-fi-b
  correspnding_vsan_id                      = var.correspnding_vsan-fcoe_id_on-fi-b

  switch_profile_moid                       = intersight_fabric_switch_profile.fabric_switch_profile_fi-b.moid
}



#Policy to configure the NTP Servers
module "ntp_policy" {
  source                                    = "./modules/ntp_policy"
  org_moid                                  = module.org_details.org_moid

  name_of_ntp_policy                        = "${var.name_prefix}-NTP-Policy"
  description_of_ntp_policy                 = "NTP Policy for ${var.name_prefix}"

  list_of_ntp_server                        = var.list_of_ntp_server
  timezone                                  = var.timezone

  switch_profile_moid_of_fi-a               = intersight_fabric_switch_profile.fabric_switch_profile_fi-a.moid
  switch_profile_moid_of_fi-b               = intersight_fabric_switch_profile.fabric_switch_profile_fi-b.moid
}



#Update DNS settings
module "network_config_policy" {
  source = "./modules/networkconfig_policy"
  org_moid                                  = module.org_details.org_moid

  name_of_network_config_policy             = "${var.name_prefix}-Network-Config-Policy"
  description_of_network_config_policy      = "DNS settings for ${var.name_prefix}"

  preferred_ipv4_dns_server                 = var.preferred_ipv4_dns_server
  alternate_ipv4_dns_server                 = var.alternate_ipv4_dns_server

  switch_profile_moid_of_fi-a               = intersight_fabric_switch_profile.fabric_switch_profile_fi-a.moid
  switch_profile_moid_of_fi-b               = intersight_fabric_switch_profile.fabric_switch_profile_fi-b.moid
}



#Configure Quality of Service (QoS) for FIs
module "system_qos_policy" {
  source                                    = "./modules/system_qos_policy"
  org_moid                                  = module.org_details.org_moid

  name_of_system_qos_policy                 = "${var.name_prefix}-System-QoS-Policy"
  description_of_system_qos_policy          = "System QoS Policy for FI's"
  mtu_for_best_effort_class_of_service      = var.mtu_for_best_effort_class_of_service

  switch_profile_moid_of_fi-a               = intersight_fabric_switch_profile.fabric_switch_profile_fi-a.moid
  switch_profile_moid_of_fi-b               = intersight_fabric_switch_profile.fabric_switch_profile_fi-b.moid
}
