pipeline {
    agent any
    stages {
        stage('Terraform Validate') {
            steps {
                sh 'echo "Started ...!" '
            }
        }
        stage ('Git Clone') {
            steps {
                sh 'echo "Cloning..." '
            }
        }
        stage ('Terraform Plan') {
            steps {
                sh 'echo "Terraform Plan.." '
            }
        }
        stage ('Terraform Approve') {
            steps {
                sh 'echo "Approve the Infrastructure."'
            }
        }
        stage ('Terraform Apply'){
            steps {
                sh 'echo "Terraform Apply"'
            }
        }
    }
}
