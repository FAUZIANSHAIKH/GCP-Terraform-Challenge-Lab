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
    credentials = file("../../Credentials/burner-shanaush-0b6b06976292.json")
}
module "instances" {
    source = "../../modules/instances"
    count_instances = 2
    name = ["terraform-instance-1","terraform-instance-2"]
}
module "vpc" {
    source = "../../modules/vpcnetwork"
}