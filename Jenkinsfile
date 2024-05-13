pipeline {
    environment {
       registry = "abedelhafez/tmdb-devops-challenge"
       registryCredential = 'docker'
       dockerImage = ''
    }
    agent any
    stages {
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