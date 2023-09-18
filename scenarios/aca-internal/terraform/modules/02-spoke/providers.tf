# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.50.0"
    }
  }
  required_version = ">= 1.3.4"

  backend "azurerm" {
    resource_group_name  = "rg-sbox-dbc-tfstate-01"
    storage_account_name = "stsboxdbctfstate01"
    container_name       = "tfstate"
    key                  = "acalza/spoke.tfstate"
  }
}
provider "azurerm" {
  features {}
}