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

terraform plan: shows action to create the resources --> review the plan

terraform apply: to implement the plan by typing yes





