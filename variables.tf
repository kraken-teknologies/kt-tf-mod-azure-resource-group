variable "location" {
  type = string
  default = "East US"
}

variable "resource-group-name" {
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

variable "resource-policy-params" {
  type = string
  default = null
}


variable "policy-name" {
  type = string
}

variable "policy-type" {
  type = string
  default = "Custom"
  validation {
    condition = contains(["BuiltIn","Custom","NotSpecified","Static"],var.policy-type)
    error_message = "Policy Type must be one of the following values:  BuiltIn, Custom, NotSpecified, Static"
  }
}

variable "policy-mode" {
  type = string
  default = "Indexed"
  validation {
    condition = contains(["All", "Indexed", "Microsoft.ContainerService.Data", "Microsoft.CustomerLockbox.Data", "Microsoft.DataCatalog.Data", "Microsoft.KeyVault.Data", "Microsoft.Kubernetes.Data", "Microsoft.MachineLearningServices.Data", "Microsoft.Network.Data","Microsoft.Synapse.Data"],var.mode)
    error_message = "Must be one of the following values : All, Indexed, Microsoft.ContainerService.Data, Microsoft.CustomerLockbox.Data, Microsoft.DataCatalog.Data, Microsoft.KeyVault.Data, Microsoft.Kubernetes.Data, Microsoft.MachineLearningServices.Data, Microsoft.Network.Data and Microsoft.Synapse.Data"
  }
}

variable "policy-meta-data" {
  type = string
  default = <<META
  {
  "category": "General"
  }
META
}

variable "policy-rule" {
  type = string
  default = <<POLICY
  {}
POLICY
}

variable "params" {
  type = string
  default = <<PARAMS
  {}
PARAMS
}