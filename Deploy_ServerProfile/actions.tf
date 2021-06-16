resource "intersight_server_profile" "Deploy-Server-Profile" {
  for_each = local.server_moid_to_profile_mapping
  name = each.value
  target_platform = "FIAttached"

  action = var.action

  organization {
    object_type = "organization.Organization"
    moid = module.org_details.org_moid
  }
}