data "azurerm_resource_group" "example" {
  name = var.Avamar_rg
}



data "azurerm_virtual_network" "example" {
  name                = var.Avamar_Vnet
  resource_group_name = var.Avamar_rg
}



data "azurerm_subnet" "example" {
  name                 = var.Avamar_Subnet
  virtual_network_name = var.Avamar_Vnet
  resource_group_name  = var.Avamar_rg
}