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
}

# make use of the exisiting resource group
resource "azure_virtual_network" "name" {
  name = "test-vnet"
  address_space = "[10.0.0.16]"
  location = "southindia"
  resource_group_name = "pradeep"
}