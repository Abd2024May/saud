pipeline {
    environment {
       registry = "abedelhafez/tmdb-devops-challenge"
       registryCredential = 'docker'
       dockerImage = ''
    }
    tools {nodejs "inNode"}
    agent any
    stages {
        stage('Dependencies') {
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
        stage('Build') {
            steps {
                script {
                // build
                sh 'npm run build'
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