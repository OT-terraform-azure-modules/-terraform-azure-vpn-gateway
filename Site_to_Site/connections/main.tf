resource "azurerm_virtual_network_gateway_connection" "connections" {
  name                = var.connection_name
  location            = var.location
  resource_group_name = var.resource_group_name

  type                            = var.connection_type
  virtual_network_gateway_id      = var.virtual_network_gateway_id
  local_network_gateway_id        = var.local_network_gateway_id
  shared_key = var.shared_key
  tags = var.connection_tags
}