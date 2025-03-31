# Resource Group
resource "azurerm_resource_group" "a12_rg" {
  name     = "wu000302-a12-rg"
  location = "canadacentral"
}

# Output
output "resource_group_name" {
  value       = azurerm_resource_group.a12_rg.name
  description = "The name of the Azure Resource Group"
}