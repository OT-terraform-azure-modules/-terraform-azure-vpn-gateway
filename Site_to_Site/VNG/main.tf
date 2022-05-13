resource "azurerm_virtual_network_gateway" "vng" {

  name                = var.vng_name
  location            = var.location
  resource_group_name = var.resource_group_name

  type     = var.vng_type
  vpn_type = var.vpn_type
  sku      = var.sku_type

  ip_configuration {
    public_ip_address_id          = var.public_ip_address_id
    private_ip_address_allocation = var.private_ip_address_allocation
    subnet_id                     = var.subnet_id
  }
  tags = var.vng_tags

  
}

