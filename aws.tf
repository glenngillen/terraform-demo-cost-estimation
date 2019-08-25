provider "aws" {
  version = "~> 2.17"
  region = "us-east-1"
  assume_role {
    role_arn     = "arn:aws:iam::985898799555:role/OrganizationAccountAccessRole"
    session_name = "TerraformDemo"
  }
}