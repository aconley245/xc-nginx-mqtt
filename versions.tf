terraform {
  required_version = ">= 1.5.7"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.82.0"
    }
  }
}

provider "google" {
  project = var.gcp_project_name
  region = var.gcp_region
}

