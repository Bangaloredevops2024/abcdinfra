module "rg" {
    source     = "../module/rg"
    rg_name    = "rg_delhi"
    rg_location = "eastus"
}
module "storage_account" {
    source    = "../module/storage"
    rg_name   = "rg_delhi"
    location  = "central india"
    stg_name  = "stgdelhi"
}
module "vnet" {
    source = "../module/vnet"
    vnet_name = "vnet_delhi"
    rg_name = "rg_delhi"
    location = "central india"
    address_space = ["10.0.0.0/16"] 
 } 
 module "subnet" {
    source = "../module/subnet"
    subnet_name = "subnet_delhi"
    vnet_name = "vnet_delhi"
    rg_name = "rg_delhi"
    address_prefixes = ["10.0.0.2/28"]
  
}
module "nic" {
    source = "../module/nic"
    nic_name = "nic_delhi"
    rg_name = "rg_delhi"
    location = "central india"
  
}
module "vm" {
  source = "../module/vm"
  vm_name = "vm_delhi"
  rg_name = "rg_delhi"
  location = "central india"
  username = "ndls"
  admin_password = "user@12345"
  vm_size = "Standard F2"
}