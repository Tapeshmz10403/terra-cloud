provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_desktop_host_pool" "host_pool" {
  name                     = var.host_pool_name
  location                 = azurerm_resource_group.rg.location
  resource_group_name      = azurerm_resource_group.rg.name
  type                     = "Pooled"
  maximum_sessions_allowed = 10
  load_balancer_type       = "BreadthFirst"
  friendly_name            = "TestHostPool"
  validate_environment     = true
}

resource "azurerm_virtual_desktop_workspace" "workspace" {
  name                = var.workspace_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  friendly_name       = "TestWorkspace"
  description         = "A test AVD workspace"
}

resource "azurerm_virtual_desktop_application_group" "app_group" {
  name                = var.application_group_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  type                = "Desktop"
  host_pool_id        = azurerm_virtual_desktop_host_pool.host_pool.id
  friendly_name       = "TestDesktopAppGroup"
}

resource "azurerm_virtual_desktop_workspace_application_group_association" "assoc" {
  workspace_id         = azurerm_virtual_desktop_workspace.workspace.id
  application_group_id = azurerm_virtual_desktop_application_group.app_group.id
}

