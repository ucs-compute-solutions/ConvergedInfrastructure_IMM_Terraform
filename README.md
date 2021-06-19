## Terraform configuration repo to deploy Converged Infrastructure stack in Intersight Managed Mode (IMM)
## Introduction
Terraform is an open-source infrastructure as code software tool that enables you to safely and predictably create, change, and improve infrastructure.
Terraform helps with 
•	Increased agility with reduced time to provision from weeks to minutes with automated workflow
•	Control costs systematically as users and applications scale
•	Reduce risk and discover errors before they happen with code reviews and embed provisioning guardrails

### Terraform Providers
Providers are plugins that implement resource types likes Intersight.
Terraform CLI finds and installs providers when initializing a working directory. It can automatically download providers from a Terraform registry or load them from a local mirror or cache.

### Why Terraform provider for the Cisco Intersight?
The Cisco Intersight platform supports the Terraform provider. The Terraform provider allows organizations to develop Cisco Intersight resources as self-service infrastructure using code rather than manual provisioning.
This approach provides several benefits:
•	You can more quickly and easily scale Cisco Intersight resources. You can provision infrastructure in minutes, with little effort, using the automated workflows, performing the same tasks that used to take days.
•	The operating model of Terraform is well suited for the Cisco Intersight platform, because it accommodates the shift from static to dynamic infrastructure provisioning. For example, if a resource is deleted in the Terraform configuration, it will be reflected in the Cisco Intersight platform when the new configuration is applied.
•	Terraform maintains a state file, which is a record of the currently provisioned resources. State files provide a version history of Cisco Intersight resources, enabling a detailed audit trail of changes.
•	The provider enables idempotency, producing the same result and state with repeated API calls.
The set of files used to describe infrastructure in Terraform is known as a Terraform configuration. The configuration is written using HashiCorp Configuration Language (HCL), 	a simple human-readable configuration language, to define a desired topology of infrastructure resources.

## Automated Solution Deployment
