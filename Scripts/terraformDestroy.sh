terraform plan -destroy -out=terraformDestroy
terraform apply "terraformDestroy"