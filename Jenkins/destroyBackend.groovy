pipeline{
    agent any
    tools{
        terraform 'terraform'
    }
    stages{
        stage('Git Checkout'){
            steps{
                git branch: "${Branch_Name}", credentialsId: '351a488f-e254-41f0-bda1-7f56e7444af3', url: 'https://github.com/FAUZIANSHAIKH/GCP-Terraform-Challenge-Lab.git'
            }
        }
        stage('Terraform Script'){
             steps{
                sh label: '', script: 'cd TerraformBackend;terraform plan -destroy -out=terraformDestroy;terraform apply "terraformDestroy"'
            }
        }
    }
}