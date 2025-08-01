
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
# Create a virtual network
resource "azurerm_virtual_network" "vnet" {
  name                = var.azurerm_virtual_network_name
  location            = azurerm_resource_group.example.location
  address_space       = var.address_space
  resource_group_name = azurerm_resource_group.example.name

}
