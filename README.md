# Azure DLS Medallion
This Terraform module creates a storage account in Azure with 3 containers in it: `bronze`, `silver` and `gold`.

## Usage
```
module "dls" {
  source  = "arne-vl/dls/azurerm"
  version = "1.1.0"
  # insert the 3 required variables here
}
```
