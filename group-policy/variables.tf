variable "policy-name" {
  type = string
}

variable "display-name" {
  type = string
  default = "Policy Managed By Terraform"
}

variable "policy-type" {
  type = string
  default = "Custom"
  validation {
    condition = contains(["BuiltIn","Custom","NotSpecified","Static"],var.policy-type)
    error_message = "Policy Type must be one of the following values:  BuiltIn, Custom, NotSpecified, Static"
  }
}

variable "mode" {
  type = string
  default = "Indexed"
  validation {
    condition = contains(["All", "Indexed", "Microsoft.ContainerService.Data", "Microsoft.CustomerLockbox.Data", "Microsoft.DataCatalog.Data", "Microsoft.KeyVault.Data", "Microsoft.Kubernetes.Data", "Microsoft.MachineLearningServices.Data", "Microsoft.Network.Data","Microsoft.Synapse.Data"],var.mode)
    error_message = "Must be one of the following values : All, Indexed, Microsoft.ContainerService.Data, Microsoft.CustomerLockbox.Data, Microsoft.DataCatalog.Data, Microsoft.KeyVault.Data, Microsoft.Kubernetes.Data, Microsoft.MachineLearningServices.Data, Microsoft.Network.Data and Microsoft.Synapse.Data"
  }
}

variable "meta-data" {
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