# Resource Group
variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure regin for resources"
  type        = string
  default     = "easteurope"
}

# Virtual Network
variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
}

# Subnets
variable "Subnets" {
  description = "Map of subnets with address prefixes"
  type        = map(list(string))

}

#host pools
variable "host_pools" {
  description = "Configuration for multiple host pools"
  type = map(object({
    name                    = string
    type                    = string
    friendly_name           = string
    validation_environment  = bool
    maximum_sessions        = number
    workspace_description   = string
    workspace_friendly_name = string
  }))

}

