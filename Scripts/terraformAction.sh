terraform init
terraform plan -refresh=true -out=terraform
terraform apply -input=false "terraform"