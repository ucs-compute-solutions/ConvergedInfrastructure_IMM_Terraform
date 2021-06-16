#Multicast settings for all the Virtual LAN networks
resource "intersight_fabric_multicast_policy" "fabric_multicast_policy_for_all_vlans" {
  name               = var.name_of_fabric_multicast_policy
  description        = var.description_of_fabric_multicast_policy

  querier_state      = "Disabled"
  snooping_state     = "Enabled"

  organization {
    object_type     = "organization.Organization"
    moid            = var.org_moid
  }
}


#Policy for all the VLANs to be deployed on the Fabric Interconnect.
resource "intersight_fabric_eth_network_policy" "vlans_for_fabric_interconnects" {
  name              = var.name_of_fabric_eth_network_policy
  description       = var.description_of_fabric_eth_network_policy

  organization {
    object_type     = "organization.Organization"
    moid            = var.org_moid
  }

  profiles = [
    {
      moid                  = var.switch_profile_moid_of_fi-a
      object_type           = "fabric.SwitchProfile"
      class_id              = "fabric.SwitchProfile"
      selector              = ""
      additional_properties = ""
    },

    {
      moid                  = var.switch_profile_moid_of_fi-b
      object_type           = "fabric.SwitchProfile"
      class_id              = "fabric.SwitchProfile"
      selector              = ""
      additional_properties = ""
    }]
}



#Configuration for all VLANs
resource "intersight_fabric_vlan" "fabric_vlans" {
  for_each                = var.vlan_details_for_fabric_interconnects
  name                    = each.key
  auto_allow_on_uplinks   = true
  is_native               = var.native_vlan == each.value ? true : false
  vlan_id                 = each.value

  eth_network_policy = [{
    moid                  = intersight_fabric_eth_network_policy.vlans_for_fabric_interconnects.moid
    additional_properties = ""
    class_id              = "fabric.EthNetworkPolicy"
    object_type           = "fabric.EthNetworkPolicy"
    selector              = ""
  }]

  multicast_policy = [{
    moid                  = intersight_fabric_multicast_policy.fabric_multicast_policy_for_all_vlans.moid
    additional_properties = ""
    class_id              = "fabric.MulticastPolicy"
    object_type           = "fabric.MulticastPolicy"
    selector              = ""
  }]

}