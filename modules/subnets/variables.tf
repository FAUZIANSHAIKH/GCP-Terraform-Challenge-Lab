variable "network_name" {
  description = "The name of the network where subnets will be created"
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