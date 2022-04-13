# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.90.0"
    }
  }

  required_version = ">= 0.14.9"
}

provider "azurerm" {
  features {}
}

#Creates resource group
resource "azurerm_resource_group" "main" {
  name     = "learn-tf-rg-eastus"
  location = "eastus"
}

#Creates virtual network
resource "azurerm_virtual_network" "main" {
  name                = "learn-tf-vnet-eastus"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  address_space       = ["10.0.0.0/16"]
}
