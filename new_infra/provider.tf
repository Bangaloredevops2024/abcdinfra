terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "4.39.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "rgdelhi"
    storage_account_name = "delhicity"
    container_name = "tfstate"
    key = "terraform.tfstate"
    
  }
}