resource "azurerm_managed_disk" "Avamar_Manageddisk" {
  name                 = "mngmdisk"
  location             = data.azurerm_resource_group.example.location
  resource_group_name  = data.azurerm_resource_group.example.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = 10
}

resource "azurerm_virtual_machine_data_disk_attachment" "managed_disk_attach" {

  managed_disk_id    = azurerm_managed_disk.Avamar_Manageddisk.id
  virtual_machine_id = azurerm_virtual_machine.main.id
  lun                = "2"
  caching            = "ReadWrite"
}