#Provide the name of Intersight Organization.
organization_name = "default"

#Specify the action. [ Deploy / Unassign ]
action              = "Deploy"


#Specify the Server name to Server Profile mapping below to which you want to Deploy or Unassign
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
  AA04-6454-1-1     = "IMM-Demo-RHEL-Host-1"
  AA04-6454-1-2     = "IMM-Demo-RHEL-Host-2"

}



