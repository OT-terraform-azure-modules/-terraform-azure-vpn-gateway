
variable "vng_name" {
  default     = "vng-1"
  description = "The Virtual network gateway  name"
  type        = string

}

variable "vng_type" {
  default     = "Vpn"
  description = "This is virtual network gateway type.Valid options are VPN or ExpressRoute"
  type        = string
}
variable "vpn_type" {
  default     = "RouteBased"
  description = "This is vpn type.Valid options are RouteBased or PolicyBased"
  type        = string
}
variable "sku_type" {
  default     = "Basic"
  description = "(Required) Configuration of the size and capacity of the virtual network gateway. Valid options are Basic, Standard, HighPerformance, UltraPerformance, ErGw1AZ, ErGw2AZ, ErGw3AZ, VpnGw1, VpnGw2, VpnGw3, VpnGw4,VpnGw5, VpnGw1AZ, VpnGw2AZ, VpnGw3AZ,VpnGw4AZ and VpnGw5AZ"
  type        = string
}
variable "vng_tags" {
  type = map(string)
  default = {
    Name        = "testing"
    environment = "prod"
  }
  description = "(Optional) Tag which will associated to the Virtual Network Gateway."
}
variable "subnet_id" {
  description = "Gateway subnet id"
  type = string
}
variable "private_ip_address_allocation" {
  type = string
  default = "Dynamic"
}
variable "allocation_method" {
  description = "(Required) Defines the allocation method for this IP address.Possible values are Static or Dynamic"
  type = string
  default = "Dynamic"
}
variable "resource_group_name" {
  description = "name of Resource group in which the Virtual network gateway will be created  "
  type = string

  
}
variable "public_ip_address_id" {
  type = string
  description = "Public ip address id"
}
variable "location" {
  type = string
  
}
