resource "azurerm_role_assignment" "Virtual-Desktop-admin01" {
  role_definition_id = "13d633b2-81c7-4a44-87c0-460493f12e55"
  principal_id       = "principle id"
  scope              = "/subscription/"
}
 