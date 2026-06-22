pipeline {
    agent any
    
   parameters {
        choice(name: 'ENVIRONMENT', choices: ['dev','prod'], description: 'Select the environment to deploy')
    }

    stages {
        stage('checkout') {
            steps {
                checkout scm
            }
        }
        stage('Terraform format check') {
            steps {
                sh 'terraform fmt -recursive -check'
            }
        }
        stage('Terraform initialization') {
            steps {
                dir("envs/${params.ENVIRONMENT}") {
                    sh 'terraform init'
                }
            }
        }
        stage('Terraform validation') {
            steps {
                dir("envs/${params.ENVIRONMENT}") {
                    sh 'terraform validate'
                }
            }
        }
        stage('Terraform plan') {
            steps {
                dir("envs/${params.ENVIRONMENT}") {
                    sh 'terraform plan -out=tfplan'
                }
            }
        }
        stage('Approve Terraform plan') {
            steps {
                input message: 'Do you want to apply the Terraform plan?', ok: 'Apply'
            }
        }

        stage('Terraform apply') {
            steps {
                dir("envs/${params.ENVIRONMENT}") {
                    sh 'terraform apply tfplan'
                }
            }
        }
    }
}