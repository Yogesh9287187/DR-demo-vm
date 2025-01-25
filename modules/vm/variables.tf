variable "vm_name" {
  description = "The name of the virtual machine."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The Azure region where the VM will be created."
  type        = string
}

variable "vm_size" {
  description = "The size of the virtual machine."
  type        = string
}

variable "admin_username" {
  description = "The administrator username for the VM."
  type        = string
}

variable "admin_password" {
  description = "The administrator password for the VM."
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet to which the VM's NIC will connect."
  type        = string
}

variable "network_interface_id" {
  description = "The ID of the network interface for the VM."
  type        = string
}
