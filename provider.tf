terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.62.1"
    }
  }
}

provider "google" {
  region      = "us-east1"
  project     = "prod-383706"
  zone        = "us-east1-b"
}
