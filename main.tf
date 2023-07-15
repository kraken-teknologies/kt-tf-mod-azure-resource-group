module "resource-group" {
  source = "./resource-group"
  name = var.resource-group-name
  location = var.location
  tags = var.tags
}