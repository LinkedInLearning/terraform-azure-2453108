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

#Create subnet
resource "azurerm_subnet" "main" {
  name = "learn-tf-subnet-eastus"
  virtual_network_name = azurerm_virtual_network.main.name 
  resource_group_name = azurerm_resource_group.main.name 
  address_prefixes = ["10.0.0.0/24"]
}

#Creates network interface card (NIC)
resource "azurerm_network_interface" "internal" {
  name                = "learn-tf-nic-eastus"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.main.id
    private_ip_address_allocation = "Dynamic"
  }
}

#Creates Virtual Machine 
resource "azurerm_windows_virtual_machine" "main" {
  name = "learn-tf-vm-eu" 
  resource_group_name = azurerm_resource_group.main.name
  location = azurerm_resource_group.main.location 
  size = "Standard_B1s"
  admin_username = "user.admin" 
  admin_password = "enter-password-here"

  network_interface_ids = [
    azurerm_network_interface.internal.id
  ]

  os_disk {
    caching = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer = "WindowsServer"
    sku = "2016-DataCenter"
    version = "latest"
  }
}
