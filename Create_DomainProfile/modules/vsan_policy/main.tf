#Policy for all the VSANs to be deployed on the Fabric Interconnect.
resource "intersight_fabric_fc_network_policy" "vsans_for_fabric_interconnects" {
  name            = var.name_of_fabric_fc_network_policy
  description     = var.description_of_fabric_fc_network_policy

  enable_trunking = true

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



#Configuration for all VSANs
resource "intersight_fabric_vsan" "fabric_vsans" {
  name                    = var.name_of_vsan
  default_zoning          = "Disabled"
  fcoe_vlan               = var.fcoe_vlan_id
  vsan_id                 = var.correspnding_vsan_id

  fc_network_policy       = [{
    moid                  = intersight_fabric_fc_network_policy.vsans_for_fabric_interconnects.moid
    additional_properties = ""
    selector              = ""
    class_id              = "fabric.FcNetworkPolicy"
    object_type           = "fabric.FcNetworkPolicy"
  }]
}
