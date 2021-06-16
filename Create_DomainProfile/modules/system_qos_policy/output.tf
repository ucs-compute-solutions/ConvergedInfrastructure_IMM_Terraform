#Configure Quality of Service (QoS) for FIs
output "system_qos_policy_moid" {
  value = intersight_fabric_system_qos_policy.system_qos_policy.moid
}