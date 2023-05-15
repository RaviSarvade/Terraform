Terraform
=========
IAAC - configure code to provision the infra

Resource - its a object that terraform manages

Hashicorp COnfiguration Langauge Basics:
=========================================
<Block> <Parameters> {
key1 = value1 |
.             |  {Arguments}
.             |
}
local_file.tf: COnfiguration file
---------------
Block_name local=provider, 
|          file= resource
|          Resource_type Resource_Name
|           |             |
resource "local_file" "pet" {
filename = "/root/pets.txt"
content = "we Love Pets!"
}

terraform init: checks configuration file & init work dir contains .tf file
it understands we are making use of local provider based on the resource type declared
in teh resource block and download plugins to work with resources mentioned in .tf file

plugins will be downloaded in .terraform/plugins in the working directory of the terraform file

terraform plan: shows action to create the resources --> review the plan
terraform apply: to implement the plan by typing yes
terraform destroy: to destroy the resources in the current confif dir

Try to make few cahnges in below local_file.tf file:

resource "local_file" "pet" {
filename = "/root/pets.txt"
content = "we Love Pets!"
file_permissions = "0700"
}
#tf plan --> "-/+" which means the resource will be destroyed & recreated
"#forces replcaement"--> shows responsible for this change.
This type of infra is called immutable infrastructure

Plugins will be downloaded from below link after running tf init
registry.terraform.io/hashicorp/local
|                        |        |
hostname         Org Namespace   Providers








