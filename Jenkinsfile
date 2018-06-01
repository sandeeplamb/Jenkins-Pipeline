pipeline {
    agent  any
    stages {
        stage('terra Validate') {
            steps {
                sh 'echo "Started ...!" '
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
