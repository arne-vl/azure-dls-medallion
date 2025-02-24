variable "storage_account_name" {
  description = "The name of the Azure Storage Account to be created or managed."
  type = string
}

variable "resource_group_name" {
  description = "The name of the Azure Resource Group where the storage account will be deployed."
  type = string
}

variable "location" {
  description = "The Azure region where the resources will be provisioned (e.g., 'East US', 'West Europe')."
  type = string
}

variable "tags" {
  description = "A map of key-value pairs to apply as tags to the created storage account."
  type = object({})
  default = {}
}
