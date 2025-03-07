terraform {
  backend "azurerm" {
    resource_group_name = "azure-devops"
    storage_account_name = "terraformstate9qi5qj9dzzzddfdsf"
    container_name = "tfstate"
    key = "terraform.tfstate"
  }
}
