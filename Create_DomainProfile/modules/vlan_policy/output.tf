#Policy for all the VLANs to be deployed on the Fabric Interconnect.
output "vlans_for_fabric_interconnects_moid" {
  value = intersight_fabric_eth_network_policy.vlans_for_fabric_interconnects.moid
}


