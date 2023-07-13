# Kraken Tek Azure Module Resource Group

This module can be used to create new resource groups with policy assignments and policies. You can also use this 
module to create just an resource group or just a policy

# Usage
```terraform

```

# Variables
| Name                   | Description                                     |
|:-----------------------|:------------------------------------------------|
| location               | Azure location where the group will be created  |
| resource-group-name    | Name of resource group                          |
| tags                   | Tags for the resource group                     |
| resource-policy-params | Additional params for the resource group policy |
| policy-name            | Name for policy                                 |
| policy-type            | Policy Type defaults to custom                  |
| policy-mode            | Policy Mode defaults to indexed                 |
| policy-meta-data       | Policy Meta Data in JSON Format                 |
| policy-rule            | Policy Rules in JSON Format                     |


