resource "intersight_fabric_switch_profile" "fabric_switch_profile_fi-a" {
  name        = "${var.name_of_ucs_domain_profile}-A"
  description = "fabric switch profile"
  type        = "instance"
  action      = var.action


  switch_cluster_profile = [{
    moid = data.intersight_fabric_switch_cluster_profile.ucs_domain_profile.results[0].moid
    object_type = "fabric.SwitchClusterProfile"
    class_id = "fabric.SwitchClusterProfile"
    selector = ""
    additional_properties = ""
  }]

}


resource "intersight_fabric_switch_profile" "fabric_switch_profile_fi-b" {
  name        = "${var.name_of_ucs_domain_profile}-B"
  description = "fabric switch profile"
  type        = "instance"
  action      = var.action


  switch_cluster_profile = [{
    moid = data.intersight_fabric_switch_cluster_profile.ucs_domain_profile.results[0].moid
    object_type = "fabric.SwitchClusterProfile"
    class_id = "fabric.SwitchClusterProfile"
    selector = ""
    additional_properties = ""
  }]

}