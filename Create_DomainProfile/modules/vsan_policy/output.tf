#Policy for all the VSANs to be deployed on the Fabric Interconnect.
output "vsans_for_fabric_interconnects_moid" {
  value = intersight_fabric_fc_network_policy.vsans_for_fabric_interconnects.moid
}


