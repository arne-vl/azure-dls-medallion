variable "storage_account_name" {
  description = "The name of the Azure Storage Account to be created or managed."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the Azure Resource Group where the storage account will be deployed."
  type        = string
}

variable "location" {
  description = "The Azure region where the resources will be provisioned (e.g., 'East US', 'West Europe')."
  type        = string
}

variable "account_kind" {
  description = "Kind of account for the storage account."
  type        = string
  default     = "StorageV2"
}

variable "account_tier" {
  description = "Defines the tier to use for this storage account."
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "The replication type for the storage account."
  type        = string
  default     = "LRS"
}

variable "access_tier" {
  description = "Defines the access tier."
  type        = string
  default     = "Hot"
}

variable "is_hns_enabled" {
  description = "Specifies whether the storage account has hierarchical namespace enabled."
  type        = bool
  default     = true
}

variable "allow_nested_items_to_be_public" {
  description = "Whether nested items in the storage account can be made public."
  type        = bool
  default     = false
}

variable "shared_access_key_enabled" {
  description = "Specifies whether the storage account permits authentication via shared access key."
  type        = bool
  default     = false
}

variable "containers" {
  description = "List of containers to create."
  type        = list(string)
  default     = ["bronze", "silver", "gold"]
}

variable "tags" {
  description = "A map of key-value pairs to apply as tags to the created storage account."
  type        = object({})
  default     = {}
}
