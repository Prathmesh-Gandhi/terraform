pipeline {
    agent any
}
stages {
        stage('Plan') {
                sh 'terraform init'
                sh "terraform plan"
            }
        }
        stage('Apply') {
            steps {
                sh "terraform apply --auto-approve"
            }
        }
    }
