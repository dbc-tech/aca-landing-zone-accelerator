resource "azurerm_network_interface" "vmNic" {
  name                = var.nicName
  resource_group_name = var.resourceGroupName
  location            = var.location

  ip_configuration {
    name                          = "ipconfig1"
    subnet_id                     = var.subnetId
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "linuxVm" {
  name                = var.vmName
  resource_group_name = var.resourceGroupName
  location            = var.location

  admin_username                  = var.adminUsername
  admin_password                  = var.adminPassword
  disable_password_authentication = false
  size                            = var.size

  custom_data = base64encode(local.custom_data)

  network_interface_ids = [
    azurerm_network_interface.vmNic.id
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}