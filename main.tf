terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "Terraform-demo-rg"
  location = "eastus"
  tags = {
    environment = "demo"
    source      = "terraform"
    owner       = "Jopica"
  }
}
