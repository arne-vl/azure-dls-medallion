output "name" {
  value = azurerm_storage_account.dls.name
}

output "id" {
  value = azurerm_storage_account.dls.id
}

output "identity" {
  value = azurerm_storage_account.dls.identity[0]
}
