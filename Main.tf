terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "3.4.0"
    }
  }

  Cloud {
    organization = "TTerra"
    workspaces {
      name = "TerraCloud"
    }
  }
}

provider "azuread" {
  # Configuration options
}