## Terraform configuration repo to deploy Converged Infrastructure stack in Intersight Managed Mode (IMM)
## Introduction
Terraform is an open-source infrastructure as code software tool that enables you to safely and predictably create, change, and improve infrastructure.
Terraform helps with 

- Increased agility with reduced time to provision from weeks to minutes with automated workflow
- Control costs systematically as users and applications scale
- Reduce risk and discover errors before they happen with code reviews and embed provisioning guardrails


#### Terraform Providers
Providers are plugins that implement resource types likes Intersight.
Terraform CLI finds and installs providers when initializing a working directory. It can automatically download providers from a Terraform registry or load them from a local mirror or cache.

#### Why Terraform provider for the Cisco Intersight?
The Cisco Intersight platform supports the Terraform provider. The Terraform provider allows organizations to develop Cisco Intersight resources as self-service infrastructure using code rather than manual provisioning.
This approach provides several benefits:

- You can more quickly and easily scale Cisco Intersight resources. You can provision infrastructure in minutes, with little effort, using the automated workflows, performing the same tasks that used to take days.
- The operating model of Terraform is well suited for the Cisco Intersight platform, because it accommodates the shift from static to dynamic infrastructure provisioning. For example, if a resource is deleted in the Terraform configuration, it will be reflected in the Cisco Intersight platform when the new configuration is applied.
- Terraform maintains a state file, which is a record of the currently provisioned resources. State files provide a version history of Cisco Intersight resources, enabling a detailed audit trail of changes.
- The provider enables idempotency, producing the same result and state with repeated API calls.
The set of files used to describe infrastructure in Terraform is known as a Terraform configuration. The configuration is written using HashiCorp Configuration Language (HCL), 	a simple human-readable configuration language, to define a desired topology of infrastructure resources.

## Automated Solution Deployment

### Installation

- Terraform 0.14.0 or later must be installed
- Access to the Terraform registry via the internet must be available

Clone the "ConvergedInfrastructure_IMM_Terraform"  repository to create a local copy of the scripts to work with.

```
https://github.com/ucs-compute-solutions/ConvergedInfrastructure_IMM_Terraform
```

### Generate API keys

To use the Cisco Intersight provider, you need an API key, a secret key, and the Cisco Intersight endpoint URL. To generate the keys, follow these steps:
- Log in to https://www.intersight.com/.
- On the Settings screen, click the Settings menu.
- On the General page, choose API > API Keys > Generate API Key.
- On the Generate New API Key screen, enter the purpose for the API key and click Generate. The API key ID and RSA private key are displayed.
- Copy the API key.
- Save the private key information in a .pem file. Save it in a location in the downloaded repository.

### Define the Cisco Intersight provider

Each of the directories contain a file named "proivder.tf". Update this file with  API key ID and Secret Key file. The endpoint changes if you are using  Cisco Intersight appliance.

```
provider "intersight" {
  apikey    = "Your Intersight API Key ID"
  secretkey = "Intersight Secret Key File (SecretKey.txt)"
  endpoint  = "www.intersight.com"
}
```

### Workflows

Converged Infrastructure stack in Intersight Managed Mode is deployed in multiple phases. It involves below steps in order.

1. Configure UCS Domain Policies
2. Configure UCS Domain Profiles
3. Deploy UCS Domain Profile
4. Configure pools like MAC, IP, WWN, IQN
4. Configure UCS Server Policies
5. Configure UCS Server Profiles
6. Associating profiles to physical servers.


> **Hence, we created multiple directories to logically separate each function. Each of these directories define Terraform configuration files, required modules, input it takes and the output.**

> **All you need to do is, input your configuration in the “terraform.tfvar” file in each of the directories and then apply the terraform configuration in sequence.**
 

#### Create_DomainProfile

This directory defines Terraform configuration for creating all the policies and profiles related to UCS Domain. You need to input Domain related configuration in terraform.tfvars file defined in this directory.


#### Deploy_DomainProfile

This directory defines Terraform configuration for applying actions like Deploy domain profile or Unassign already assigned domain profile. Action configuration can be defined in terraform.tfvars file defined in this directory.


#### Create_Linux_FC_ServerProfile
#### OR
#### Create_Linux_iSCSI_ServerProfile

If you are configuring Fibre Channel SAN in your CI stack, then configure each parameter required in Create_Linux_FC_ServerProfile. Configurations related to iSCSI SAN can be made in ServerProfile.

Both directories create Pools, Policies and Profiles required for UCS Servers. Apply Terraform configurations from one of the directories. 

#### Deploy_ServerProfile

This directory defines Terraform configuration for associating server profiles with servers. You can change the configuration in terraform.tfvars file to Disassociate a server profile. 

### Execution
Once all the required variables are entered in terraform.tfvars, run the following commands in each directory
```
terraform init
```
This command will initialize the environment and download the Cisco Intersight Terraform provider to the .terraform folder.
```
terraform plan
```
This command will execute the script without committing any changes and give a list of all the resources that will be created. Examine the output of the plan execution for any warnings or errors.
```
terraform apply
```
This command will execute the plan and commit all the new resources or changes to the environment.

### Validate and Deploy
Once the Terraform script has completed, all the necessary policies and profiles for UCS Domain and Servers will appear in your Cisco Intersight management UI, shown in the Policies section and the Profiles section.
