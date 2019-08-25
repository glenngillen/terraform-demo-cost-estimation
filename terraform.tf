terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Compu-Global-Hyper-Mega-Net"
    workspaces {
      name = "cost-estimation"
    }
  }
}
