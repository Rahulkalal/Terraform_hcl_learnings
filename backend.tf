terraform {
  backend "s3" {
    bucket         = "terraformstate-hcl_hands_on"
    key            = "state/terraform.tfstate"
    region         = "us-east-1"
  }
}
