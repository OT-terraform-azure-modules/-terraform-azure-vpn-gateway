variable "name" {
  type        = string
  description = "(Required) Specifies the name of the Local Network Gateway. Changing this forces a new resource to be created."
  default = "my-network"
}
variable "location" {
  type        = string
  default = "eastus"
  description = "(Required) Specifies the Azure Region where the Local Network exists. Changing this forces a new resource to be created."
}