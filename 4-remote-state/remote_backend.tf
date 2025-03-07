terraform {
  backend "azurerm" {
    resource_group_name = "azure-devops"
    storage_account_name = "terraformstatefiles23234"
    container_name = "tfstate"
    key = "terraform.tfstate"
  }
}
