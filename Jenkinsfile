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
                sh 'pwd'
                // Build the code
                sh 'npm install'
                }
            }
        }
        stage('Lint') {
            steps {
                script {
                sh 'pwd'
                // Lint the code
                sh 'npm run lint'
                }
            }
        }
        stage('Test') {
            steps {
                script {
                catchError (buildResult: 'FAILURE', stageResult: 'FAILURE') {
                sh 'pwd'
                // Run tests
                sh 'npm test'
                }
              }
           }
        }
        stage('Build image') {
            steps{
                script {
                sh 'pwd'
                dockerImage = docker.build registry + ":$BUILD_NUMBER"
                    }
            }
        }


    }
}