output "org_moid" {
  value = data.intersight_organization_organization.get_org_moid.results[0].moid
}
