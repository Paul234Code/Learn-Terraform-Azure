
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.34.0"
    }
  }
}

provider "azurerm" {
  features {}
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

resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name  
  location = var.location
}

resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = {
    environment = "Developpment"
  }
}
