sudo terraform init
sudo terraform plan -refresh=true -out=terraformApply
sudo terraform apply -input=false "terraformApply"
