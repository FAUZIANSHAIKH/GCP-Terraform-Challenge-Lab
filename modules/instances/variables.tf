# Global Variables
variable "project_id" {
  description = "The project ID"
  default     = "burner-shanaush"
}
variable "region" {
  description = "The region of the project."
  default     = "us-central1"
}
variable "zone" {
  description = "The zone of the project."
  default     = "us-central1-a"
}
# Instances Variables
variable "count_instances" {
  description = "count_instances"
  default     = 1
}
variable "name" {
  type        = list(string)
  description = "The name"
  default     = ["tf-instance-1"]
}
variable "machine_type" {
  description = "The machine type"
  default     = "n1-standard-1"
}
variable "image" {
  description = "The image"
  default     = "debian-cloud/debian-9"
} 
variable "network" {
  description = "The network"
  default     = "default"
} 
variable "metadata_startup_script" {
  description = "The metadata script"
  default     = "#!/bin/bash"
} 
variable "allow_stopping_for_update" {
  description = "The allow_stopping_for_update"
  type        = bool
  default     = true
}