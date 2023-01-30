locals {
  prefix = "${organization}-${environment}-${application}"
}

resource "azurerm_resource_group" "example" {
  name     = "${local.prefix}-${var.resource_group_name}"
  location = var.location
  tags = var.tagging
}

resource "azurerm_managed_disk" "example" {
    count = length(var.azurerm_managed_disk)
  name                 = "${local.prefix}-${var.azurerm_managed_disk[count.index]}"
  location             = azurerm_resource_group.example.location
  resource_group_name  = azurerm_resource_group.example.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = "1"

  tags = var.tagging
  
}
