resource "azurerm_network_interface" "nic_name" {
    name = var.nic_name
    resource_group_name = var.rg_name
    location = var.location

    ip_configuration {
      name = "internal"
      subnet_id = azurerm_subnet.subnet_name.id
      private_ip_address_allocation = "Dynamic"
    }
  
}


