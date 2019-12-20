resource "azurerm_resource_group" "example" {
  name     = "acctestRG"
  location = "West US 2"
}

resource "azurerm_managed_disk" "hdd" {
  name                 = "acctestmd"
  location             = "West US 2"
  resource_group_name  = "${azurerm_resource_group.example.name}"
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = "1"

  tags = {
    environment = "staging"
  }
}
  resource "azurerm_managed_disk" "ssd" {
    name                 = "acctestmd"
    location             = "West US 2"
    resource_group_name  = "${azurerm_resource_group.example.name}"
    storage_account_type = "StandardSSD_LRS"
    create_option        = "Empty"
    disk_size_gb         = "1"

    tags = {
      environment = "staging"
    }
}
