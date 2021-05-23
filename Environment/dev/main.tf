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
    source          = "../../modules/instances"
    count_instances = 2
    name            = ["tf-instance-1","tf-instance-2"]
    network_name    = var.network_name
    subnet_name    = var.subnet_name
}
module "vpc" {
    source         = "../../modules/vpcnetwork"
    project_id     = var.project_id
    network_name   = var.network_name
}
module "subnets" {
  source           = "../../modules/subnets"
  network_name     = var.network_name
  subnets          = var.subnets
}