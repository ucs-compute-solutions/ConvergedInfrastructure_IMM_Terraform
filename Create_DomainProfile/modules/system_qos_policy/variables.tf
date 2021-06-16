variable "org_moid" {
}


#Configure Quality of Service (QoS) for FIs
variable "name_of_system_qos_policy" {
}


variable "description_of_system_qos_policy" {
  default = ""
}


variable "mtu_for_best_effort_class_of_service" {
  default = "9216"
}


variable "switch_profile_moid_of_fi-a" {
}


variable "switch_profile_moid_of_fi-b" {
}

