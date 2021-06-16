#Configure Quality of Service (QoS) for FIs
resource "intersight_fabric_system_qos_policy" "system_qos_policy" {
  name                   = var.name_of_system_qos_policy
  description            = var.description_of_system_qos_policy

  organization {
    object_type         = "organization.Organization"
    moid                = var.org_moid
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



resource "intersight_fabric_system_qos_policy" "system_qos_policy_add_custom_classes" {
  depends_on = [intersight_fabric_system_qos_policy.system_qos_policy]
  name                   = var.name_of_system_qos_policy
  description            = var.description_of_system_qos_policy

  classes = [
    {
      admin_state        = "Disabled"
      bandwidth_percent  = 0
      cos                = 1
      mtu                = 1500
      multicast_optimize = false
      name               = "Bronze"
      packet_drop        = true
      weight             = 7
      additional_properties = ""
      class_id           =  "fabric.QosClass"
      object_type        =  "fabric.QosClass"
    },

    {
      admin_state        = "Disabled"
      bandwidth_percent  = 0
      cos                = 2
      mtu                = 1500
      multicast_optimize = false
      name               = "Silver"
      packet_drop        = true
      weight             = 8
      additional_properties = ""
      class_id           =  "fabric.QosClass"
      object_type        =  "fabric.QosClass"
    },

    {
      admin_state        = "Disabled"
      bandwidth_percent  = 0
      cos                = 4
      mtu                = 1500
      multicast_optimize = false
      name               = "Gold"
      packet_drop        = true
      weight             = 9
      additional_properties = ""
      class_id           =  "fabric.QosClass"
      object_type        =  "fabric.QosClass"
    },

    {
      admin_state        = "Disabled"
      bandwidth_percent  = 0
      cos                = 5
      mtu                = 1500
      multicast_optimize = false
      name               = "Platinum"
      packet_drop        = true
      weight             = 10
      additional_properties = ""
      class_id           =  "fabric.QosClass"
      object_type        =  "fabric.QosClass"
    },

    {
      admin_state        = "Enabled"
      bandwidth_percent  = 50
      cos                = 255
      mtu                = var.mtu_for_best_effort_class_of_service
      multicast_optimize = false
      name               = "Best Effort"
      packet_drop        = true
      weight             = 5
      additional_properties = ""
      class_id           =  "fabric.QosClass"
      object_type        =  "fabric.QosClass"

    },

    {
      admin_state        = "Enabled"
      bandwidth_percent  = 50
      cos                = 3
      mtu                = 2240
      multicast_optimize = false
      name               = "FC"
      packet_drop        = false
      weight             = 5
      additional_properties = ""
      class_id           =  "fabric.QosClass"
      object_type        =  "fabric.QosClass"
    }

  ]

  organization {
    object_type         = "organization.Organization"
    moid                = var.org_moid
  }
}