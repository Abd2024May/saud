pipeline {
    environment {
       registry = "abedelhafez/tmdb-devops-challenge"
       registryCredential = 'docker'
       dockerImage = ''
       CI = 'true'
    }
    tools {nodejs "inNode"}
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
    }
}