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
                  cd jenkins/build/ && docker-compose build --no-cache
                
                '''
            }
        }
//         stage('Unit Test') {
//            steps {
//                sh '''
//                   docker run --tty app:$BUILD_NUMBER python tests/test.py
//                '''
//         }
//         }
//         stage('Deploy') {
//             steps {
//                 sh '''
//                  cd jenkins/build
//                  export $BUILD_NUMBER
//                  sudo docker-compose up -d
                 
//                 '''
//             }
//         }
    }
}
