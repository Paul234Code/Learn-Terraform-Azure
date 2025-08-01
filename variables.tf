variable "location" {
    description = "value of location"
    type = string
    default = "eastus"
  
}
variable "resource_group_name" {
    description = "value of resource_group_name" 
    type = string
    default = "TerraformRG"
  
}
variable "storage_account_name" {
    description = "value of storage_account_name"
    type = string
    default = "storage20478" 
}
variable "account_tier" {
    description = "value of account_tier"
    type = string
    default = "Standard"
}
variable "account_replication_type" {
    description = "value of account_replication_type"
    type = string
    default = "LRS" 
  
}