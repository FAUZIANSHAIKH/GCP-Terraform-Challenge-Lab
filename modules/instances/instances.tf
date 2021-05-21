resource "google_compute_instance" "tf-instance-1" {
  count        = var.count_instances
  name         = var.name[count.index]
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    network = var.network
  }
  metadata_startup_script = var.metadata_startup_script
  allow_stopping_for_update = var.allow_stopping_for_update
}
# resource "google_compute_instance" "tf-instance-2" {
#   name         = "tf-instance-2"
#   machine_type = "n1-standard-1"
#   zone         = "us-central1-a"

#   boot_disk {
#     initialize_params {
#       image = "debian-cloud/debian-9"
#     }
#   }
#   network_interface {
#     network = "default"
#   }
#   metadata_startup_script = "#!/bin/bash"
#   allow_stopping_for_update = true
# }
# resource "google_compute_instance" "tf-instance-3" {
#   name         = "tf-instance-3"
#   machine_type = "n1-standard-1"
#   zone         = "us-central1-a"

#   boot_disk {
#     initialize_params {
#       image = "debian-cloud/debian-9"
#     }
#   }
#   network_interface {
#     network = "default"
#   }
#   metadata_startup_script = "#!/bin/bash"
#   allow_stopping_for_update = true
# }