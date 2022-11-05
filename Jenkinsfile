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
        stage('Unit Test') {
           steps {
               sh '''
                  python tests/test.py
               '''
        }
        }
        stage('Deploy') {
            steps {
                sh '''
                 cd jenkins/build
                 sudo docker compose up -d
                 
                '''
            }
        }
    }
}
