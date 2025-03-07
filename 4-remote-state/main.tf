terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "f664773f-4f0b-429a-85af-b69d2b6e7100"
  resource_provider_registrations = "none"
}

# make use of the exisiting resource group
resource "azurerm_virtual_network" "shared_vnet" {
  name = "shared_vnet"
  address_space = ["10.0.0.0/16"]
  location = "southindia"
  resource_group_name = "azure-devops"
}

output "vnet_id" {
  value = azurerm_virtual_network.shared_vnet.id
}

output "vnet_name" {
  value = azurerm_virtual_network.shared_vnet.name
}

resource "azurerm_subnet" "subnet-1" {
  name                 = "subnet-1"
  resource_group_name  = "azure-devops"
  virtual_network_name = azurerm_virtual_network.name.name
  address_prefixes     = ["10.0.1.0/24"]
}

