pipeline {
    
    choice(name: 'TERRAFORM COMMANDS', choices: ['','apply', 'destroy'], description: 'Pass the action you want to perform with Terraform') 
    
    agent any

    environment {
        AWS_ACCESS_KEY_ID     = credentials('aws-access-key')     
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-key')     
        TF_VAR_aws_access_key = "${AWS_ACCESS_KEY_ID}"            
        TF_VAR_aws_secret_key = "${AWS_SECRET_ACCESS_KEY}"        
    }

    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/papsolo2025/lambda-jerkins.git'  
            }
        }
stages {
        stage('Change Directory') {
            steps {
                dir('lambda-jerkins') {
                    sh 'ls -la' 
                
                }
            }
        }
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform ${params.TERRAFORM COMMANDS}'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform ${params.TERRAFORM COMMANDS}'
            }
        }
    }
}