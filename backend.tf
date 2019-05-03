terraform {
  backend "gcs" {
    bucket  = "kran"
    prefix    = "/kyki/terraform.tfstate"
    project = "winter-cab-234801"
  }
}
