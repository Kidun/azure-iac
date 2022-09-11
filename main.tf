terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.21.0"
    }
  }
}

provider "azurerm" {
  features {

  }
}

resource "azurerm_resource_group" "rg" {
  name     = "rg_dev01"
  location = "southcentralus"
  tags = {
    "environment" = "dev"
    "source"      = "tf"
  }

}