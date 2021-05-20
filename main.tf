terraform {
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
    credentials = file("burner-shanaush-0b6b06976292.json")
}
module "instances" {
    source = "./modules/instances"
}