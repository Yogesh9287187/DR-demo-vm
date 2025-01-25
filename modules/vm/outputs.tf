output "vm_id" {
  description = "The ID of the created virtual machine."
  value       = azurerm_windows_virtual_machine.vm.id
}

output "nic_id" {
  description = "The ID of the network interface attached to the VM."
  value       = azurerm_network_interface.nic.id
} 

