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
  
}
variable "azurerm_virtual_network_name" {
    description = "value of azurerm_virtual_network_name"
    type = string
    default = "vnet-eastus"
  
}
variable "ARM_SUBSCRIPTION_ID" {
description = "value of ARM_SUBSCRIPTION_ID"
  type = string
  sensitive = true
}
variable "ARM_CLIENT_ID" {
  description = "value of ARM_CLIENT_ID"
    type = string 
    sensitive = true
}
variable "ARM_CLIENT_SECRET" {
  description = "value of ARM_CLIENT_SECRET"
  type = string
  sensitive = true
}
variable "ARM_TENANT_ID" {
  description = "value of ARM_TENANT_ID"
  type = string
  sensitive = true
}