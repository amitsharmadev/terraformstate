resource "azurerm_resource_group" "RG" {
    name="PoolRG"
    location = "eastus"
  
}

resource "azurerm_storage_account" "mystorage" {
    location = "eastus"
    resource_group_name = azurerm_resource_group.RG.name
    account_tier = "Standard"
    account_replication_type = "LRS"
    name="amitshdevstoremystore1"
}