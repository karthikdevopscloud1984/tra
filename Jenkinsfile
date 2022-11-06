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
                  cd jenkins/build/ && docker-compose build && docker-compose up -d 
                '''
            }
        }
        stage('Test') {
           steps {
               sh '''
                 cd jenkins/build/ && docker-compose exec -T app python tests/test.py
                 if [ $? -eq 0 ]; then
                    cd jenkins/build/ && docker-compose down
                 else
                    cd jenkins/build/ && docker-compose down
                    exit 1
                 fi
               '''
        }
        }
        stage('Deploy') {
            steps {
                sh '''
                 echo $BUILD_NUMBER >> .env
                 cd jenkins/build/ && docker-compose up -d  
                '''
            }
        }
    }
}
