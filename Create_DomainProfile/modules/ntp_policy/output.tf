#Policy to configure the NTP Servers
output "ntp_policy_moid" {
  value = intersight_ntp_policy.ntp_policy.moid
}

