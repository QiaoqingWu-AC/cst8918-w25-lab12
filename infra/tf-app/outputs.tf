# Output
output "resource_group_name" {
  value       = azurerm_resource_group.a12_rg.name
  description = "The name of the Azure Resource Group"
}