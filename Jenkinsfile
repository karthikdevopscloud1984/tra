pipeline {

    agent any

    stages {

        stage('Build') {
            steps {
                sh '''
                
                  cp -r static templates tests jenkins/build/
                  cp .env hello.py requirements.txt jenkins/build/
                  echo "****************************"
                  echo "** Building Docker Image ***"
                  echo "****************************"
                  cd jenkins/build/ && sudo docker build -t app:$BUILD_NUMBER .
                
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
