pipeline {
    agent any
    stages {
        stage('terra Validate') {
            steps {
                sh 'echo "Started ...!" '
		terraform init
            }
        }
        stage ('Git Clone') {
            steps {
                sh 'echo "Cloning..." '
            }
        }
        stage ('terra Plan') {
            steps {
                sh 'echo "terra Plan.." '
		terraform plan
            }
        }
        stage ('terra Approve') {
            steps {
                sh 'echo "Approve the Infrastructure."'
            }
        }
        stage ('terra Apply'){
            steps {
                sh 'echo "terra Apply"'
            }
        }
    }
}
