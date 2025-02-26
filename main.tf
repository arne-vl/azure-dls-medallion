resource "azurerm_storage_account" "dls" {
  name                            = var.storage_account_name
  resource_group_name             = var.resource_group_name
  location                        = var.location
  account_kind                    = var.account_kind
  account_tier                    = var.account_tier
  account_replication_type        = var.account_replication_type
  access_tier                     = var.access_tier
  is_hns_enabled                  = var.is_hns_enabled
  allow_nested_items_to_be_public = var.allow_nested_items_to_be_public
  shared_access_key_enabled       = var.shared_access_key_enabled

  identity {
    type = "SystemAssigned"
  }

  tags = var.tags
}

resource "azurerm_storage_container" "containers" {
  for_each = var.containers

  name                  = each.value
  storage_account_id    = azurerm_storage_account.dls.id
  container_access_type = "private"
}
