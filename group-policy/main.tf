resource "azurerm_policy_definition" "az-policy-def" {
  display_name = var.display-name
  mode         = var.mode
  name         = var.policy-name
  policy_type  = var.policy-type
  parameters = var.params
  policy_rule = var.policy-rule
  metadata = var.meta-data
}