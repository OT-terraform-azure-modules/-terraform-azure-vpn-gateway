
variable "lng_name" {
  type        = string
  description = "(Required) Specifies the name of the Local Network Gateway. Changing this forces a new resource to be created."
  default = "demo-lng"
}
variable "location" {
  type        = string
  description = "(Required) Specifies the Azure Region where the Local Network exists. Changing this forces a new resource to be created."
}
variable "resource_group_name" {
  type        = string
  description = "(Required) Specifies the name of the Resource Group in which the Local Network exists should exist. Changing this forces a new resource to be created."
}
variable "gateway_address" {
  type        = string
  description = "(Required) Specifies The public IP address of your local gateway. Changing this forces a new resource to be created."
}
variable "address_space" {
  type        = list(string)
  description = "Specifies the One or more IP address ranges that define your local network's address space"
}
variable "lng_tags" {
  type = map(string)
  default = {
    Name        = "testing"
    environment = "prod"
  }
  description = "(Optional) Tag which will associated to the Local Network Gateway."
}