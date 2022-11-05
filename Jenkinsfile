pipeline {

    agent any

    stages {

        stage('Build') {
            steps {
                sh '''
                
                ./jenkins/build/build.sh
                
                '''
            }
        }
        stage('Test') {
            steps {
                sh 'echo "This is Test stage"'
            }
        }
        stage('Push') {
            steps {
                sh 'echo "This is Push stage"'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo "This is deploy stage"'
            }
        }
    }
}
