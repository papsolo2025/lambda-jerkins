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


        stage('Terraform Init') {
            steps {
                    sh 'terraform init'
                }
            }

        stage('Terraform Action') {
            steps {
                    sh "terraform ${params.TERRAFORM_COMMAND}"
                }
            }
    }
}
