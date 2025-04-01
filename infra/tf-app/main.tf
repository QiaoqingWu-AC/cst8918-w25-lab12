# Resource Group
resource "azurerm_resource_group" "a12_rg" {
  name     = "wu000302-a12-rg"
  location = "canadacentral"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "wu000302-a12-vnet"
  location            = "canadacentral"
  resource_group_name = azurerm_resource_group.a12_rg.name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "subnet" {
  name                 = "wu000302-a12-subnet"
  resource_group_name  = azurerm_resource_group.a12_rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes       = ["10.0.1.0/24"]
}
