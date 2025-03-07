terraform {
  backend "azurerm" {
    resource_group_name = "azure-devops"
    storage_account_name = "tfstate07032025"
    container_name = "tfstate"
    key = "terraform.tfstate"
  }
}
