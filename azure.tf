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
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA5QDJ78LFYjvka6cZcxSghrOx5jDdY3BVZLSzHbmmLtaDaGFXnUwZINbr3YzixdlSyhtxnlk/eHNEhzvlR9aFe8tHcJKRbmOETCsOY6b6LCUOC1azoGWjv9ZYsJsmMCjDRG2id90wmeynyliHnfnAWin03QUXpIvuak4DjGEQyJlkhw3H4mWVOqVowRto3cMcM/0SosgO4C1V+deN7AxnjF+O+oaRL9PRNH3Iop/UhJhp0BtfhL7JH/7UAK8iwj4x6aVmC4LqbKIIy8p4LpIgWbjYc9sVYs8yWE2s0/S3AhPNrbXAfATl9hiQ/ZqcuWtgOuDOwLd7U1iNkWj5qypzXQ== glenngillen@glenn-gillens-computer.local"
}