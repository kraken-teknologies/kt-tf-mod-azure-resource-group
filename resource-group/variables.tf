variable "location" {
  type = string
  default = "East US"
}

variable "name" {
  type = string
}

variable "tags" {
  type = map(any)
  default = {
    ManagedBy = "Terraform"
    Env = "Azure Demos"
    Owner = "Not Set"
  }
}

variable "resource-policy-id" {
  type = string
  default = null
}

variable "resource-policy-params" {
  type = string
  default = null
}