pipeline {
    environment {
       registry = "abedelhafez/tmdb-devops-challenge"
       registryCredential = 'docker'
       dockerImage = ''
    }
    agent any
    tools {nodejs "NodeJS"}
    stages {
       stage('Test') {
           steps{
               sh 'node -v'
               sh 'npm prune'
               sh 'npm install'
               sh 'npm test'
             }

       }
    }
}