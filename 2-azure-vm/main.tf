terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {
    
  }
}

# make use of the exisiting resource group
data "azurerm_resource_group" "existing"{
    name = "pradeep"
}

# virtual network
resource "azurevm_virtual_network" "vnet"{
    name = "test-vm-net"
    address_space = ["10.0.0.0/16"]
    location = "southindia"
    resource_group_name = data.azurerm_resource_group.exisiting.name
}
