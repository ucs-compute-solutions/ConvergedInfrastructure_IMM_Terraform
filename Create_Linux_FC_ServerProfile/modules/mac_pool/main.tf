resource "intersight_macpool_pool" "my_pool" {
  name             = var.name_of_mac_pool
  description      = var.description_of_mac_pool

  mac_blocks       = [{ from = var.mac_pool_start, size = var.size_of_mac_pool, additional_properties = "", to = "", class_id = "", object_type = "" }]
  assignment_order = "default"

  organization {
    object_type    = "organization.Organization"
    moid           = var.org_moid
  }
}
