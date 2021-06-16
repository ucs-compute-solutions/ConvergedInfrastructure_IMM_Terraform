#Update DNS settings
output "network_config_policy_moid" {
  value = intersight_networkconfig_policy.network_config_policy.moid
}