terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.49.0"
    }
  }
}

provider "google" {
    credentials = file("serviceacc.json")
    project = var.project_id
    region = var.region
    zone = var.zone
  
}