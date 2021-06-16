resource "intersight_ippool_pool" "ip_pool" {
  name             = var.name_of_ip_pool
  description      = var.description_of_ip_pool

  assignment_order = "default"
  ip_v4_blocks	   = [{ from = var.ip_pool_start, size = var.size_of_ip_pool, additional_properties = "", to = "", class_id = "ippool.IpV4Blocks", object_type = "ippool.IpV4Blocks" }]

  ip_v4_config {
    object_type 	= "ippool.IpV4Config"
    gateway     	= var.gateway
    netmask     	= var.netmask
    primary_dns 	= var.primary_dns
    secondary_dns 	= var.secondary_dns
  }

  organization {
    object_type = "organization.Organization"
    moid        = var.org_moid
  }

  lifecycle {
    ignore_changes = [ip_v4_blocks]
  }
}
