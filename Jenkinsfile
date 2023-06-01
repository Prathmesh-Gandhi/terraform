pipeline {
    agent any

        stages {
            stage('Plan') {
                steps {
                    sh "terraform init"
                    sh "terraform plan"
                      }
                           }
                }
            stage('Apply') {
                steps {
                    sh "terraform apply --auto-approve"
                       }
                            }
}
