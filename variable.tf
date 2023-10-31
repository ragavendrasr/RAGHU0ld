variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
  default     = "East US"
}

variable "resource_group_name" {
  description = "Name of the resource group."
  default     = "myResourceGroup"
}

variable "address_space" {
  description = "Address space for VNET"
  default     = ["10.0.0.0/16"]
}
