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
  subscription_id = "24c4fb07-0fb5-4b37-bc45-5cb7e6e95520"
  resource_provider_registrations = "none"
}

# make use of the exisiting resource group
resource "azurerm_virtual_network" "name" {
  name = "test-vnet"
  address_space = ["10.0.0.0/16"]
  location = "southindia"
  resource_group_name = "pradeep"
}