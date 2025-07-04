
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

  type = string
}
variable "ARM_CLIENT_ID" {
    type = string 
}
variable "ARM_CLIENT_SECRET" {
  type = string
}
variable "ARM_TENANT_ID" {
  type = string
}

resource "azurerm_resource_group" "example" {
  name     = "terraformRG"
  location = "West Europe"
}

resource "azurerm_storage_account" "example" {
  name                     = "storage20278"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "Developpment"
  }
}
