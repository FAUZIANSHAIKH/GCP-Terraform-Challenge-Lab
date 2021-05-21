variable "bucket" {
  description = "The Bucket"
  default     = "burner-bucket"
}
variable "location" {
  description = "The location."
  default     = "US"
}
variable "force_destroy" {
  description = "Destroy"
  type        = bool
  default     = true
}
variable "uniform_bucket_level_access" {
  description = "The uniform_bucket_level_access"
  type        = bool
  default     = true
}
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