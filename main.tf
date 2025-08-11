terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.38.1"
    }
  }

  backend "azurerm" {
    resource_group_name  = "udayrm-rg"
    storage_account_name = "storageuday9561"
    container_name       = "uday1423"
    key                  = "cv.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "027bc23a-8a9d-41f9-b17f-65bf7ca72059"
}

resource "azurerm_resource_group" "rg" {
  name     = "udaysingh-rg"
  location = "central india"
}

resource "azurerm_storage_account" "sg" {
  depends_on = [ azurerm_resource_group.rg ]
  name                     = "pratapsinghstorage5231"
  resource_group_name      = "udaysingh-rg"
  location                 = "central india"
  account_tier             = "Standard"
  account_replication_type = "GRS"


}