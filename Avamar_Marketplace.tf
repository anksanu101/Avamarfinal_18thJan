resource "azurerm_marketplace_agreement" "dellemc" {
  publisher = var.Avamar_Publisher
  offer     = var.Avamar_EMC_offer
  plan      = var.Avamar_EMC_Plan
}