#Policy to configure the NTP Servers
resource "intersight_ntp_policy" "ntp_policy" {
  name              = var.name_of_ntp_policy
  description       = var.description_of_ntp_policy

  enabled           = true
  ntp_servers       = var.list_of_ntp_server

  timezone          = var.timezone

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