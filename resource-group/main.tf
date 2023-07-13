resource "azurerm_resource_group" "resource-group" {
  location = var.location
  name     = var.name
  tags = merge(var.tags)
}

resource "azurerm_resource_group_policy_assignment" "policy-assignment" {
  count = var.resource-policy-id != null ? 1 : 0
  resource_group_id = azurerm_resource_group.resource-group.id
  policy_definition_id = var.resource-policy-id
  parameters = var.resource-policy-params
  name = "${var.name}-policy-assignment"
}