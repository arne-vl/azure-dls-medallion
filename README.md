# Azure DLS Medallion
This Terraform module creates a storage account in Azure with 3 containers in it: `bronze`, `silver` and `gold`.

## Usage
```
module "dls" {
  source = "github.com/arne-vl/azure-dls-medallion"
}
```
or
```
module "dls" {
  source = "git@github.com:arne-vl/azure-dls-medallion.git"
}
```
