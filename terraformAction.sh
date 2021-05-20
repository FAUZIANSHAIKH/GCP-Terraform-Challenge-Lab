terraform init

terraform plan -refresh=true -out=terraformApply

terraform apply -input=false "terraformApply"