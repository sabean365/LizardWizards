terraform {
    required_version = ">= 0.13"

    required_providers {
      azurerm = {
          source = "hashicorp/azurerm"
          version = "~> 2.0"
      }

      azuread = {
          source = "hashicorp/azuread"
          version = "~> 1.0"
      }

      random = {
          source = "hashicorp/random"
          version = "~> 3.0"
      }
    }


backend "azurerm" {
    resource_group_name   = "capstone-rg"
    storage_account_name  = "capstoneproject2022"
    container_name        = "terraform"
    key                   = "terraform.dev.files"
  }
}  

provider "azurerm" {
  features {

  }
}

resource "random_pet" "aksrandom" {

}