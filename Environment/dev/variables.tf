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
variable "network_name" {
  description = "The name of the network being created"
  default     = "vpc-network"
}
variable "subnets" {
  type        = list(map(string))
  description = "The list of subnets being created"
  default     = [
                    {
                        subnet_name           = "subnet-01"
                        subnet_ip             = "10.10.10.0/24"
                        subnet_region         = "us-central1"
                    },
                    {
                        subnet_name           = "subnet-02"
                        subnet_ip             = "10.10.20.0/24"
                        subnet_region         = "us-central1"
                    }
                ]   
}
