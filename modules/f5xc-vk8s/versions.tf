terraform {
  required_version = ">= 1.5.7"

  required_providers {
    volterra = {
      source  = "volterraedge/volterra"
      version = "= 0.11.24"
    }
  }
}

provider "volterra" {
  api_cert = var.f5xc_api_cert
  api_key  = var.f5xc_api_key
  url      = var.f5xc_api_url
}