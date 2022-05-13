module "public-ip_module" {
  source              = "git::https://github.com/OT-terraform-azure-modules/terraform-azure-public-ip.git?ref=master"
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.resource_group_location
  allocation_method   = var.allocation_method
  public_ip_name      = var.pub_ip_name
  sku                 = var.sku
  tags                = var.public_ip_tags
}
module "vng" {
  source               = "../VNG"
  resource_group_name  = module.resource_group.resource_group_name
  location             = module.resource_group.resource_group_location
  vng_name             = var.vng_name
  public_ip_address_id = module.public-ip_module.public_ip_id[0]
  subnet_id            = module.subnet.subnet_id[0]
  vng_tags             = var.vng_tags
}

module "lng" {
  source              = "../LNG/"
  lng_name            = var.lng_name
  location            = module.resource_group.resource_group_location
  resource_group_name = module.resource_group.resource_group_name
  gateway_address     = var.gateway_address
  address_space       = var.lng_address_space
  lng_tags            = var.lng_tags
  depends_on          = [module.vng]
}

module "connections" {
  source              = "../connections/"
  connection_name     = var.connection_name
  location            = module.resource_group.resource_group_location
  resource_group_name = module.resource_group.resource_group_name

  connection_type            = var.connection_type
  virtual_network_gateway_id = module.vng.vng_id
  local_network_gateway_id   = module.lng.lng_id
  connection_tags            = var.connection_tags
  depends_on                 = [module.lng]
}