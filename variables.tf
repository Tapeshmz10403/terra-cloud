variable "resource_group_name" {
  description = "Name of the resource group"
  default     = "avd-test-rg"
}

variable "location" {
  description = "Azure region"
  default     = "East US"
}

variable "host_pool_name" {
  description = "Name of the AVD host pool"
  default     = "avd-test-hostpool"
}

variable "workspace_name" {
  description = "Name of the AVD workspace"
  default     = "avd-test-workspace"
}

variable "application_group_name" {
  description = "Name of the AVD application group"
  default     = "avd-test-appgroup"
}
