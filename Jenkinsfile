pipeline {
    agent any

    parameters {
        choice(name: 'TERRAFORM_COMMAND', choices: ['plan', 'apply', 'destroy'], description: 'Terraform action to perform')
    }

    stages {
        stage('Checkout Code') {
            steps {
        git branch: 'main', credentialsId: 'jenkins-id', url: 'https://github.com/papsolo2025/lambda-jerkins.git'  
            }
        }

        stage('Change Directory') {
            steps {
                dir('lambda-jerkins') {
                    sh 'ls -la'
                }
            }
        }

        stage('Terraform Init') {
            steps {
                dir('lambda-jerkins') {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Action') {
            steps {
                dir('lambda-jerkins') {
                    sh "terraform ${params.TERRAFORM_COMMAND}"
                }
            }
        }
    }
}
