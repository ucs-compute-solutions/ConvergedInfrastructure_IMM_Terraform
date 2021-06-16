
resource "intersight_server_profile" "Server-Profile" {
  for_each = local.server_moid_to_profile_mapping
  name  = each.value

  //Some issue with automatic dependency resolution during destroy - Will fix it later.
  depends_on = [module.create_ip_pool_mgmt,
                module.create_ip_pool-scsi-a,
                module.create_ip_pool-iscsi-b,
                module.create_mac_pool-a,
                module.create_mac_pool-b,
                module.create_iqn_pool,
                module.policies_for_linux_iscsi_boot]

  target_platform = "FIAttached"

  policy_bucket = [
    {
      moid = module.policies_for_linux_iscsi_boot.bios_policy_moid,
      object_type = "bios.Policy",
      class_id = "bios.Policy",
      additional_properties = "",
      selector = ""
    },
    {
      moid = module.policies_for_linux_iscsi_boot.boot_policy_for_iscsi_moid,
      object_type = "boot.PrecisionPolicy",
      class_id = "boot.PrecisionPolicy",
      additional_properties = "",
      selector = ""
    },
    {
      moid = module.policies_for_linux_iscsi_boot.intersight_access_policy_moid,
      object_type = "access.Policy",
      class_id = "access.Policy",
      additional_properties = "",
      selector = ""
    },
    {
      moid = module.policies_for_linux_iscsi_boot.lan_connectivity_policy_moid,
      object_type = "vnic.LanConnectivityPolicy",
      class_id = "vnic.LanConnectivityPolicy",
      additional_properties = "",
      selector = ""
    }]

  organization {
    object_type         = "organization.Organization"
    moid                = module.org_details.org_moid
  }

  assigned_server = [
    {
      moid = each.key
      object_type = "compute.Blade"
      class_id = "compute.Blade"
      additional_properties = ""
      selector = ""
    }]

}