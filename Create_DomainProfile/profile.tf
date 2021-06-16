resource "intersight_fabric_switch_cluster_profile" "fabric_switch_cluster_profile" {
/*
  depends_on = [module.network_config_policy,
                module.ntp_policy,
                module.org_details,
                module.port_policy_on-fi-a,
                module.port_policy_on-fi-b,
                module.system_qos_policy,
                module.vlans_for_fabric_interconnects,
                module.vsan_for_fabric_interconnects-a,
                module.vsan_for_fabric_interconnects-b]
*/

  name        = var.name_of_ucs_domain_profile
  description = "UCS Domain Profile"
  type        = "instance"

  organization {
    object_type         = "organization.Organization"
    moid                = module.org_details.org_moid
  }
}



resource "intersight_fabric_switch_profile" "fabric_switch_profile_fi-a" {
  name        = "${var.name_of_ucs_domain_profile}-A"
  description = "fabric switch profile"
  type        = "instance"
  #action      = "Deploy"


  switch_cluster_profile = [{
    moid = intersight_fabric_switch_cluster_profile.fabric_switch_cluster_profile.moid
    object_type = "fabric.SwitchClusterProfile"
    class_id = "fabric.SwitchClusterProfile"
    selector = ""
    additional_properties = ""
  }]

/*
  policy_bucket = [
    {
      moid = module.vlans_for_fabric_interconnects.vlans_for_fabric_interconnects_moid
      object_type = "fabric.EthNetworkPolicy"
      class_id = "fabric.EthNetworkPolicy"
      additional_properties = ""
      selector = ""
    },

    {
      moid = module.vsan_for_fabric_interconnects-a.vsans_for_fabric_interconnects_moid
      object_type = "fabric.FcNetworkPolicy"
      class_id = "fabric.FcNetworkPolicy"
      additional_properties = ""
      selector = ""
    },

    {
      moid = module.port_policy_on-fi-a.fabric_port_policy_moid
      object_type = "fabric.PortPolicy"
      class_id = "fabric.PortPolicy"
      additional_properties = ""
      selector = ""
    },

    {
      moid = module.ntp_policy.ntp_policy_moid
      object_type = "ntp.Policy"
      class_id = "ntp.Policy"
      additional_properties = ""
      selector = ""
    },

    {
      moid = module.network_config_policy.network_config_policy_moid
      object_type = "networkconfig.Policy"
      class_id = "networkconfig.Policy"
      additional_properties = ""
      selector = ""
    },

    {
      moid = module.system_qos_policy.system_qos_policy_moid
      object_type = "fabric.SystemQosPolicy"
      class_id = "fabric.SystemQosPolicy"
      additional_properties = ""
      selector = ""
    }
  ]

*/

  assigned_switch = [{
    moid = data.intersight_network_element_summary.fi-a.results[0].moid
    object_type = "network.Element"
    class_id = "network.Element"
    additional_properties = ""
    selector = ""
  }]
}


resource "intersight_fabric_switch_profile" "fabric_switch_profile_fi-b" {
  name        = "${var.name_of_ucs_domain_profile}-B"
  description = "fabric switch profile"
  type        = "instance"
  #action      = "Deploy"


  switch_cluster_profile = [{
    moid = intersight_fabric_switch_cluster_profile.fabric_switch_cluster_profile.moid
    object_type = "fabric.SwitchClusterProfile"
    class_id = "fabric.SwitchClusterProfile"
    selector = ""
    additional_properties = ""
  }]

/*
  policy_bucket = [
    {
      moid = module.vlans_for_fabric_interconnects.vlans_for_fabric_interconnects_moid
      object_type = "fabric.EthNetworkPolicy"
      class_id = "fabric.EthNetworkPolicy"
      additional_properties = ""
      selector = ""
    },

    {
      moid = module.vsan_for_fabric_interconnects-b.vsans_for_fabric_interconnects_moid
      object_type = "fabric.FcNetworkPolicy"
      class_id = "fabric.FcNetworkPolicy"
      additional_properties = ""
      selector = ""
    },

    {
      moid = module.port_policy_on-fi-b.fabric_port_policy_moid
      object_type = "fabric.PortPolicy"
      class_id = "fabric.PortPolicy"
      additional_properties = ""
      selector = ""
    },

    {
      moid = module.ntp_policy.ntp_policy_moid
      object_type = "ntp.Policy"
      class_id = "ntp.Policy"
      additional_properties = ""
      selector = ""
    },

    {
      moid = module.network_config_policy.network_config_policy_moid
      object_type = "networkconfig.Policy"
      class_id = "networkconfig.Policy"
      additional_properties = ""
      selector = ""
    },

    {
      moid = module.system_qos_policy.system_qos_policy_moid
      object_type = "fabric.SystemQosPolicy"
      class_id = "fabric.SystemQosPolicy"
      additional_properties = ""
      selector = ""
    }
  ]
*/


  assigned_switch = [{
    moid = data.intersight_network_element_summary.fi-b.results[0].moid
    object_type = "network.Element"
    class_id = "network.Element"
    additional_properties = ""
    selector = ""
  }]
}