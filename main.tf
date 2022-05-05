#Creates resource group
resource "azurerm_resource_group" "main" {
  name     = "learn-tf-rg-eastus"
  location = "eastus"
}
