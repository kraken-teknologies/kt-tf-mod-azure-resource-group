resource "azurerm_resource_group" "resource-group" {
  location = var.location
  name     = var.name
  tags = merge(var.tags)
}
