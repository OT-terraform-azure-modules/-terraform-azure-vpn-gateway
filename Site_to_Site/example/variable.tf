# /*-------------------------- Variable for Public IP -------------------------------------------*/

variable "pub_ip_name" {
  description = "The name of Public IP"
  type        = list(string)
}
variable "allocation_method" {
  description = "Enter the allocation method for public ip .Options are Dynamic or Static"
  type        = string
}
variable "sku" {
  type        = string
  description = "(Optional) The SKU of the Public IP. Accepted values are Basic and Standard. Defaults to Basic."

}
variable "public_ip_tags" {
  type        = map(string)
  description = "(Optional) Tags for Resource Group"
}

# /*-------------------------- Variable for Virtual network Gateway -------------------------------------------*/

variable "vng_name" {
  description = "The Virtual network gateway name"
  type        = string
}
variable "vng_tags" {
  type        = map(string)
  description = "(Optional) Tag which will associated to the Virtual Network Gateway."
}

# /*-------------------------- Variable for Local network Gateway -------------------------------------------*/

variable "lng_name" {
  description = "The Virtual Local gateway name"
  type        = string
}
variable "gateway_address" {
  type        = string
  description = "(Required) Specifies The public IP address of your local gateway. Changing this forces a new resource to be created."
}
variable "lng_address_space" {
  type        = list(string)
  description = "Specifies the One or more IP address ranges that define your local network's address space"
}
variable "lng_tags" {
  type        = map(string)
  description = "(Optional) Tag which will associated to the Local Network Gateway."
}
# /*-------------------------- Variable for Connections -------------------------------------------*/

variable "connection_name" {
  description = "(Required) Enter your Connection name"
  type        = string
}
variable "connection_type" {
  description = "Enter connection type name.Valid options are Vnet2Vnet,IPsec or ExpressRoute"
  type        = string
}
variable "connection_tags" {
  type        = map(string)
  description = "(Optional) Tag which will associated to the Local Network Gateway."
}


