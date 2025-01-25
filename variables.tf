variable "vms" {
  type = map(object({
    vm_size       = string
    admin_username = string
  }))
  default = {
    "vm1" = {
      vm_size       = "Standard_B1ls"
      admin_username = "azureuser"
    }
    "vm2" = {
      vm_size       = "Standard_B1ls"
      admin_username = "azureadmin"
    }
  }
}
