provider "azurerm" {
  skip_provider_registration = true
  features {}
}
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.97.0"
      
    }
  }
}
data "azurerm_resource_group" "primary_rg" {
  name = "Automation-RG"
}

module "res_group" {
  source                  = "git::git@gitlab.com:ot-azure/terraform/rg.git"
  resource_group_name     = "${data.azurerm_resource_group.primary_rg.name}"
  resource_group_location = var.location
  lock_level_value        = ""
  tag_map = {
    Name = "test RG"
  }
}

module "local_network_gateway" {
    source = "../"
    name = var.name
    location = var.location
    resource_group_name = module.res_group.resource_group_name
    gateway_address = "12.13.14.15"
    address_space = ["10.0.0.0/16"]
}
