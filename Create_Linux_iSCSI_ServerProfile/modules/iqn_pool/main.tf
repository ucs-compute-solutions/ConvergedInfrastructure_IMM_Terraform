resource "intersight_iqnpool_pool" "iqn_pool" {
  name             = var.name_of_iqn_pool
  description      = var.description_of_iqn_pool

  assignment_order = "default"
  prefix           = var.prefix_for_iqn

  iqn_suffix_blocks {
    suffix      = var.suffix_for_iqn
    from	    = var.iqn_start
    size        = var.size_of_iqn_pool
  }

  organization {
    object_type = "organization.Organization"
    moid        = var.org_moid
  }
}
