pipeline {
    environment {
       registry = "abedelhafez/tmdb-devops-challenge"
       registryCredential = 'docker'
       dockerImage = ''
    }
    tools {nodejs "NodeJS"}
    agent any
    stages {
        stage('Build') {
            steps {
                script {
                // Build the code
                sh 'npm install'
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
        stage('Test') {
            steps {
                script {
                catchError (buildResult: 'FAILURE', stageResult: 'FAILURE') {
                // Run tests
                sh 'CI=true npm test'
                }
              }
            }
        }
        stage('Build image') {
            steps{
                script {
                dockerImage = docker.build registry + ":$BUILD_NUMBER"
                    }
            }
        }
        stage('Push image') {
             steps{
                 script {
                 docker.withRegistry( '', registryCredential ) {
                     dockerImage.push()
                    }
                }
             }
        }
        stage('Cleaning up') {
             steps{
                sh "docker rmi $registry:$BUILD_NUMBER"
                }
         }
    }
}