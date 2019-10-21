# Configure the Azure Provider
provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "=1.34.0"
}

variable "prefix" {
  default = "hashicorp-example"
}
variable "username" {
  default = "ggillen"
}
variable "password" {
  default = "!Password1234!"
}

variable "public_key" {
  default = ""
}