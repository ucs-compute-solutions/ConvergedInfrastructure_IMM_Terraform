#Provide the name of Intersight Organization.
organization_name = "default"


#Provide name to be prefixed for all pools and policies
name_prefix = "IMM-Demo"


#Specify the Server name to Server Profile mapping below
/*  --EXAMPLE--
server_name_to_profile_mapping = {
AA04-6454-1-1     =  "IMM-Demo-RHEL-Host-1"
AA04-6454-1-2     =  "IMM-Demo-RHEL-Host-2"
AA04-6454-1-3     =  "IMM-Demo-RHEL-Host-3"
AA04-6454-1-4     =  "IMM-Demo-RHEL-Host-4"
AA04-6454-1-5     =  "IMM-Demo-RHEL-Host-5"
AA04-6454-1-6     =  "IMM-Demo-RHEL-Host-6"
AA04-6454-1-7     =  "IMM-Demo-RHEL-Host-7"
AA04-6454-1-8     =  "IMM-Demo-RHEL-Host-8"
}
*/

server_name_to_profile_mapping = {
  AA04-6454-1-1 = "IMM-Demo-RHEL-Host-1"
  AA04-6454-1-2 = "IMM-Demo-RHEL-Host-2"
}



# MAC Pool
#For FI-A
mac_pool_start_on_fi_a   = "00:25:B5:A4:0A:00"
size_of_mac_pool_on_fi_a = 1000
#For FI-B
mac_pool_start_on_fi_b   = "00:25:B5:A4:0B:00"
size_of_mac_pool_on_fi_b = 1000


# IP Pool
ip_pool_start_for_management_access   = "192.168.160.196"
size_of_ip_pool_for_management_access = 12
gateway_mgmt                          = "192.168.160.254"
netmask_mgmt                          = "255.255.252.0"
primary_dns_mgmt                      = "192.168.160.53"
secondary_dns_mgmt                    = "192.168.160.54"


#WWNN Pool
wwnn_pool_start = "20:00:00:25:B5:A4:00:00"
wwnn_pool_size  = 64


#WWPN Pool
#For FI-A
wwpn_pool_start_on_fi_a = "20:00:00:25:B5:A4:0A:00"
wwpn_pool_size_on_fi_a  = 64
#For FI-B
wwpn_pool_start_on_fi_b = "20:00:00:25:B5:A4:0B:00"
wwpn_pool_size_on_fi_b  = 64



# IMC Access VLAN
vlan_for_cimc_access = 11



#Boot Policy for Fibre Channel Boot
#Either put Uefi or Legacy
boot_mode                   = "Legacy"
#Boot LUN ID
lun_id                      = 1
#Provide logical names to identify during boot
san_boot_device_1_name      = "StorageArray-CT0FC0"
san_boot_device_2_name      = "StorageArray-CT1FC0"
san_boot_device_3_name      = "StorageArray-CT0FC1"
san_boot_device_4_name      = "StorageArray-CT1FC1"
#Provide Target WWPN Names
san_boot_target_1_wwpn      = "52:4a:93:79:98:1a:ae:00"
san_boot_target_2_wwpn      = "52:4a:93:79:98:1a:ae:10"
san_boot_target_3_wwpn      = "52:4a:93:79:98:1a:ae:01"
san_boot_target_4_wwpn      = "52:4a:93:79:98:1a:ae:11"


#Ethernet QoS Policy
mtu                         = 1500


#Network Group Policy - Inband Management
native_vlan_inband_mgmt       = 511
allowed_vlans_inband_mgmt     = 511


#Network Group Policy - Out of Band Management
native_vlan_oob_mgmt          = 11
allowed_vlans_oob_mgmt        = 11


#Fibre Channel Network policy: SAN-A
fcoe_vlan_id_SAN-A                                 = 111
vsan_id_SAN-A                                      = 111

#Fibre Channel Network policy: SAN-B
fcoe_vlan_id_SAN-B                                 = 112
vsan_id_SAN-B                                      = 112


