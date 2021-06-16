locals  {
  ethernet_port_map =  [ for element in var.list_of_ports_for_ethernet_uplink : tomap({port_id=element, slot_id = var.slot_id_of_ports_for_ethernet_uplink, additional_properties = "", aggregate_port_id = 0, class_id = "fabric.UplinkPcRole", object_type = "fabric.UplinkPcRole" }) ]
  fc_port_map = [ for element in var.list_of_ports_for_fc_uplink: tomap({port_id=element, slot_id = var.slot_id_of_ports_for_ethernet_uplink, additional_properties = "", aggregate_port_id = 0, class_id = "fabric.FcUplinkPcRole", object_type = "fabric.FcUplinkPcRole"})]
  server_list_set = toset([for element in var.list_of_server_ports: tostring(element)])
}


#A policy for all the physical ports of the Fabric Interconnect
resource "intersight_fabric_port_policy" "fabric_port_policy" {
  name              = var.name_of_fabric_port_policy
  description       = var.description_of_fabric_port_policy
  device_model      = var.fi_model

  organization {
    object_type     = "organization.Organization"
    moid            = var.org_moid
  }

  profiles = [
    {
      moid                  = var.switch_profile_moid
      object_type           = "fabric.SwitchProfile"
      class_id              = "fabric.SwitchProfile"
      selector              = ""
      additional_properties = ""
    }
  ]

}


#Configure range of unified ports as FC/Ethernet
resource "intersight_fabric_port_mode" "fabric_port_mode" {
  custom_mode             = "FibreChannel"
  port_id_end             = var.fc_port_id_end
  port_id_start           = var.fc_port_id_start
  slot_id                 = var.slot_id_of_switch_for_fc_ports

  port_policy             = [{
    moid                  = intersight_fabric_port_policy.fabric_port_policy.moid
    object_type           = "fabric.PortPolicy"
    selector              = ""
    additional_properties = ""
    class_id              = "fabric.PortPolicy"
  }]
}


#Create Server Ports
resource "intersight_fabric_server_role" "fabric_server_port" {
  for_each                = local.server_list_set
  port_id                 = each.value
  slot_id                 = var.slot_id_of_switch_for_server_ports

  port_policy             = [{
    moid                  = intersight_fabric_port_policy.fabric_port_policy.moid
    object_type           = "fabric.PortPolicy"
    selector              = ""
    additional_properties = ""
    class_id              = "fabric.PortPolicy"
  }]

}


#Configure Ethernet uplink port-channel on the collection of ports
resource "intersight_fabric_uplink_pc_role" "ethernet_uplink_port_channel" {
  admin_speed             = var.admin_speed_for_ethernet_uplink_port_channel
  pc_id                   = var.port_channel_id_for_ethernet_uplink

  ports = local.ethernet_port_map

  port_policy             = [{
    moid                  = intersight_fabric_port_policy.fabric_port_policy.moid
    object_type           = "fabric.PortPolicy"
    selector              = ""
    additional_properties = ""
    class_id              = "fabric.PortPolicy"
  }]
}


#Configure FC uplink port-channel on the collection of ports
resource "intersight_fabric_fc_uplink_pc_role" "fc_uplink_port_channel" {
  #Implicit dependency has some issues. Will fix it later
  depends_on = [intersight_fabric_port_mode.fabric_port_mode]
  admin_speed             = var.admin_speed_for_fc_uplink_port_channel
  pc_id                   = var.port_channel_id_for_fc_uplink
  vsan_id                 = var.correspnding_vsan_id
  #fill_pattern            = "Idle"

  ports = local.fc_port_map

  port_policy             = [{
    moid                  = intersight_fabric_port_policy.fabric_port_policy.moid
    object_type           = "fabric.PortPolicy"
    selector              = ""
    additional_properties = ""
    class_id              = "fabric.PortPolicy"
  }]
}

