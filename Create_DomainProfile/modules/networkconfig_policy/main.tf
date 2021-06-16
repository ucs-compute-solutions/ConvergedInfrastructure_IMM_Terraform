#Update DNS settings
resource "intersight_networkconfig_policy" "network_config_policy" {
  name                     = var.name_of_network_config_policy
  description              = var.description_of_network_config_policy

  enable_dynamic_dns       = false
  enable_ipv4dns_from_dhcp = false
  enable_ipv6              = false

  preferred_ipv4dns_server = var.preferred_ipv4_dns_server
  alternate_ipv4dns_server = var.alternate_ipv4_dns_server

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
    }
  ]


}