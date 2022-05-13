variable "connection_name" {
  default = "demo_connection"
  description = "(Required) Enter your Connection name"
  type        = string
}
variable "resource_group_name" {
  description = "(Required) Enter your resource group name"
  type        = string
}

variable "location" {
  description = "(Required) Enter location for resource group"
  type        = string
}

variable "shared_key" {
  default = "4-v3ry-53cr37-1p53c-5h4r3d-k3y"
  description = "The VPN shared key"
  type        = string
}
variable "connection_type" {
  default = "IPsec"
  description = "Enter connection type name.Valid options are Vnet2Vnet,IPsec or ExpressRoute"
  type        = string
}
variable "virtual_network_gateway_id" {

  type        = string
}
variable "local_network_gateway_id" {
  type        = string
}
variable "connection_tags" {
  type = map(string)
  description = "(Optional) Tag which will associated to the Local Network Gateway."
}
