resource "azurerm_resource_group" "rg" {
  name     = "example-rg"
  location = "Australia east"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "example-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "subnet" {
  name                 = "example-subnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

module "vm" {
  source              = "./modules/vm"
  for_each            = var.vms
  vm_name             = each.key
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  vm_size             = each.value.vm_size
  admin_username      = each.value.admin_username
  admin_password      = each.value.admin_password
  subnet_id           = azurerm_subnet.subnet.id
  network_interface_id = null
}
/* this is testing git tags*/
/* this is testing git tags*/
/* this is testing git tags*/