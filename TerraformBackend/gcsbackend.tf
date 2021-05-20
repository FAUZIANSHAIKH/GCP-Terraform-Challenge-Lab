terraform {
    backend "gcs" {
        bucket  = "burner-bucket"
        prefix  = "terraform/state"
    }
    required_providers {
        google = {
            source      = "hashicorp/google"
            version     = "3.55.0"
        }
    }
}
provider "google" {
    project = var.project_id
    region  = var.region
    zone    = var.zone
    credentials = file("../Credentials/burner-shanaush-0b6b06976292.json")
}
resource "google_storage_bucket" "storage-bucket" {
  name                        = var.bucket
  location                    = var.location
  force_destroy               = var.force_destroy
  uniform_bucket_level_access = var.uniform_bucket_level_access
}