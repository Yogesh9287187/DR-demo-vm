variable "vms" {
  description = "Map of VMs with their configuration"
  type = map(object({
    vm_size       = string
    admin_username = string
    admin_password = string
  }))
  default = {
    "vm1" = {
      vm_size       = "Standard_B1ls"
      admin_username = "azureuser"
      admin_password = "P@ssw0rd123!"
    }
    "vm2" = {
      vm_size       = "Standard_B1ls"
      admin_username = "azureadmin"
      admin_password = "P@ssw0rd456!"
    }
  }
}
