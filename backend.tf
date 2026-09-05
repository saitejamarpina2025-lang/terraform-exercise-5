terraform {
  backend "s3" {
    bucket = "terraform-state-650177546951-qa"
    key    = "exercise5/terraform.tfstate"
    region = "us-east-1"
  }
}
