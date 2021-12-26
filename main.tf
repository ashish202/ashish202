terraform {
  required_providers {
    azure = {
      source  = "hashicorp/azurerm"
      version = "2.40.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_virtual_network" "vnet" {
  name                = "calabs-vnet"
  location            = "West US"
  resource_group_name = "cal-1068-b3"
  address_space       = ["10.0.0.0/16"]
}