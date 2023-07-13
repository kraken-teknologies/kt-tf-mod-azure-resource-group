module "resource-group-policy" {
  source = "group-policy"
  policy-name = var.policy-name
  display-name = "${var.policy-name} for resource group ${var.resource-group-name}}"
  policy-type = var.policy-type
  mode = var.policy-mode
  meta-data = var.policy-meta-data
  policy-rule = var.policy-rule
  params = var.params
}

module "resource-group" {
  source = "resource-group"
  name = var.resource-group-name
  location = var.location
  resource-policy-id = module.resource-group.resource-group-id
  resource-policy-params = var.resource-policy-params
  tags = var.tags
}