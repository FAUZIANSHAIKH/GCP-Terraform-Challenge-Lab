pipeline{
    agent any
    tools{
        terraform 'terraform'
    }
    stages{
        stage('Git Checkout'){
            steps{
                git branch: 'compute-instances-in-vpc-and-subnets', credentialsId: '351a488f-e254-41f0-bda1-7f56e7444af3', url: 'https://github.com/FAUZIANSHAIKH/GCP-Terraform-Challenge-Lab.git'
            }
        }
        stage('Terraform Script'){
             steps{
                //sh label: '', script: 'cd TerraformBackend; terraform init; terraform plan; terraform apply'
                sh script: 'cp -rvf Scripts/terraformAction.sh Environment/dev/terraformAction.sh; cd Environment/dev/; chmod 777 terraformAction.sh; ./terraformAction.sh; rm -rf terraformAction.sh'
            }
        }
    }
}