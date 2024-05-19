pipeline {
    environment {
       registry = "abedelhafez/tmdb-devops-challenge"
       registryCredential = 'docker'
       dockerImage = ''
    }
    tools {nodejs "inNode"}
    agent any
    stages {
        stage('Install Dependencies') {
            steps {
                script {
                // Install dependencies
                sh 'npm install'
                }
            }
        }
        stage('Test') {
            steps {
                script {
                catchError (buildResult: 'FAILURE', stageResult: 'FAILURE') {
                // Run tests
                sh 'npm test'
                }
              }
           }
        }
        stage('Lint') {
            steps {
                script {
                // Lint the code
                sh 'npm run lint'
                }
            }
        }
        stage('Build Docker image') {
            steps{
                script {
                dockerImage = docker.build registry + ":$BUILD_NUMBER"
              }
           }
        }

        stage('Push Docker image') {
             steps{
                 script {
                 docker.withRegistry( '', registryCredential ) {
                     dockerImage.push()
                    }
               }
           }
        }
     }
    post {
        success {
            echo 'CI pipeline passed!'
        }
        failure {
            echo 'CI pipeline failed!'
        }
    }
}
