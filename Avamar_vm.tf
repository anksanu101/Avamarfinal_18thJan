resource "azurerm_virtual_machine" "main" {
  name                  = var.Avamar_VM_Name
  location              = data.azurerm_resource_group.example.location
  resource_group_name   = data.azurerm_resource_group.example.name
  network_interface_ids = [azurerm_network_interface.main.id]
  vm_size               = var.Avamar_VM_Size
  plan {
    name      = var.Avamar_EMC_Plan
    publisher = var.Avamar_Publisher
    product   = var.Avamar_EMC_offer
  }

  # Uncomment this line to delete the OS disk automatically when deleting the VM
  # delete_os_disk_on_termination = true

  # Uncomment this line to delete the data disks automatically when deleting the VM
  # delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = var.Avamar_Publisher
    offer     = var.Avamar_EMC_offer
    sku       = var.Avamar_EMC_Plan
    version   = "latest"
  }
  storage_os_disk {
    name              = var.Avamar_Disk
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
/*resource "azurerm_managed_disk" "example" {
    name                 = "acctestmd"
    location             = "West US 2"
    resource_group_name  = azurerm_resource_group.example.name
    storage_account_type = "Standard_LRS"
    create_option        = "Empty"
    disk_size_gb         = "1"
}



resource "azurerm_virtual_machine_data_disk_attachment" "example" {
    managed_disk_id    = azurerm_managed_disk.example.id
    virtual_machine_id = azurerm_virtual_machine.example.id
    lun                = "1"
    caching            = "ReadWrite"
}*/
  os_profile {
    computer_name  = "hostname"
    admin_username = "testadmin"
    admin_password = var.Avamar_Password
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags = {
    environment = "staging"
  }
}
