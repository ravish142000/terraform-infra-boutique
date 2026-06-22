pipeline {
    agent any

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
                dir('envs/dev') {
                    sh 'terraform init'
                }
            }
        }
        stage('Terraform validation') {
            steps {
                dir('envs/dev') {
                    sh 'terraform validate'
                }
            }
        }
        stage('Terraform plan') {
            steps {
                dir('envs/dev') {
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
                dir('envs/dev') {
                    sh 'terraform apply tfplan'
                }
            }
        }
    }
}