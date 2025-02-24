terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.20.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "e6a89ab3-ce27-4148-bad8-97a6fee2010c"
  features {

  }
}
