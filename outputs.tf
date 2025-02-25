output "name" {
  description = "The name of the created storage account."
  value       = azurerm_storage_account.dls.name
}

output "id" {
  description = "The id of the created storage account."
  value       = azurerm_storage_account.dls.id
}

output "identity" {
  description = "The managed identity of the storage account."
  value       = azurerm_storage_account.dls.identity[0]
}

output "container_names" {
  description = "List of the names of containers that are created."
  value       = var.containers
}
