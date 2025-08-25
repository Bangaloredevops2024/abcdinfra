resource "azurerm_storage_account" "stg_name" {
    name = var.stg_name
    resource_group_name = var.rg_name
    location = var.location
    account_replication_type = "LRS"
    account_tier =  "Standard"
  
}

  