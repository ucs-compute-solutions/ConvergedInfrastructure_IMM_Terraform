#Provide the name of Intersight Organization.
organization_name = "default"


#Provide name to be prefixed for all pools and policies
name_prefix = "PK-TEST-IMM"


#Specify the Server name to Server Profile mapping below
/*  --EXAMPLE--
server_name_to_profile_mapping = {
AA04-6454-1-1     =  "IMM-Demo-ESXi-Host-1"
AA04-6454-1-2     =  "IMM-Demo-ESXi-Host-2"
AA04-6454-1-3     =  "IMM-Demo-ESXi-Host-3"
AA04-6454-1-4     =  "IMM-Demo-ESXi-Host-4"
AA04-6454-1-5     =  "IMM-Demo-ESXi-Host-5"
AA04-6454-1-6     =  "IMM-Demo-ESXi-Host-6"
AA04-6454-1-7     =  "IMM-Demo-ESXi-Host-7"
AA04-6454-1-8     =  "IMM-Demo-ESXi-Host-8"
}
*/

server_name_to_profile_mapping = {
  AA04-6454-1-1 = "PK-TEST-IMM-ESXi-Host-1"
  AA04-6454-1-2 = "PK-TEST-IMM-ESXi-Host-2"
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


# IP Pool - iSCSI-A
ip_pool_start_iscsi_a   = "192.168.31.201"
size_of_ip_pool_iscsi_a = 32
gateway_iscsi_a         = "192.168.31.254"
netmask_iscsi_a         = "255.255.255.0"
primary_dns_iscsi_a     = ""
secondary_dns_iscsi_a   = ""


# IP Pool - iSCSI-B
ip_pool_start_iscsi_b   = "192.168.32.201"
size_of_ip_pool_iscsi_b = 32
gateway_iscsi_b         = "192.168.32.254"
netmask_iscsi_b         = "255.255.255.0"
primary_dns_iscsi_b     = ""
secondary_dns_iscsi_b   = ""


# IQN Pool
prefix_for_iqn   = "iqn.2010-11.com.flexpod"
suffix_for_iqn   = "ucs-host"
iqn_start        = 01
size_of_iqn_pool = 32


# IMC Access VLAN
vlan_for_cimc_access = 11



#Boot Policy for iSCSI Boot
#Either put Uefi or Legacy
boot_mode = "Legacy"


#iSCSI Adapter Policy
tcp_connection_time_out = 15
dhcp_timeout            = 60
lun_busy_retry_count    = 15


#iSCSI-A Primary Target Policy
target_ip_of_iscsi_a_primary  = "192.168.31.101"
iscsi_port_of_iscsi_a_primary = 3260
target_iqn_of_iscsi_a_primary = "iqn.1992-08.com.netapp:sn.e461ee9f190611ebb06300a0985b4a87:vs.3"
lun_id_of_iscsi_a_primary     = 0


#iSCSI-A Secondary Target Policy
target_ip_of_iscsi_a_secondary  = "192.168.31.102"
iscsi_port_of_iscsi_a_secondary = 3260
target_iqn_of_iscsi_a_secondary = "iqn.1992-08.com.netapp:sn.e461ee9f190611ebb06300a0985b4a87:vs.3"
lun_id_of_iscsi_a_secondary     = 0


#iSCSI-B Primary Target Policy
target_ip_of_iscsi_b_primary  = "192.168.32.101"
iscsi_port_of_iscsi_b_primary = 3260
target_iqn_of_iscsi_b_primary = "iqn.1992-08.com.netapp:sn.e461ee9f190611ebb06300a0985b4a87:vs.3"
lun_id_of_iscsi_b_primary     = 0


#iSCSI-B Secondary Target Policy
target_ip_of_iscsi_b_secondary  = "192.168.32.102"
iscsi_port_of_iscsi_b_secondary = 3260
target_iqn_of_iscsi_b_secondary = "iqn.1992-08.com.netapp:sn.e461ee9f190611ebb06300a0985b4a87:vs.3"
lun_id_of_iscsi_b_secondary     = 0


#Network Group Policy - VLAN details of vNICs assigned to virtual switches for Management and NFS VLANs
native_vlan_for_mgmt_vnic   = 2
allowed_vlans_for_mgmt_vnic = "2,11,115,511,3050"


#Network Group Policy - VLANs details of vNIC assigned to VDS for  vMotion and traffic VLANs
native_vlan_for_vnic_assigned_for_VDS   = 2
allowed_vlans_for_vnic_assigned_for_VDS = "2,611,3000"


#Network Group Policy - iSCSI-A
native_vlan_iscsi_a   = 3010
allowed_vlans_iscsi_a = 3010


#Network Group Policy - iSCSI-B
native_vlan_iscsi_b   = 3020
allowed_vlans_iscsi_b = 3020


