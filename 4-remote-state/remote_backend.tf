terraform {
  backend "azurerm" {
    resource_group_name = "pradeep"
    storage_account_name = "terraformstate9qi5qj9d"
    container_name = "tfstate"
    key = "terraform.tfstate"
  }
}