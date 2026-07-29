terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.81.0"
    }

  }
}
  #   backend "azurerm" {
  #     resource_group_name  = "rg-momal"
  #     storage_account_name = "netflixstorage"
  #     container_name       = "tfstate"
  #     key                  = "virtual_machine.tfstate"
  #   }

  # }

  provider "azurerm" {
    features {}
  }
