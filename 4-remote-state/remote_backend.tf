terraform {
  backend "azurerm" {
    subscription_id    = "f664773f-4f0b-429a-85af-b69d2b6e7100"
    resource_group_name = "azure-devops"
    storage_account_name = "tfstate07032025"
    container_name = "tfstate"
    key = "terraform.tfstate"
  }
}
