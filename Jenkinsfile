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
        stage('testNPM') {
            steps {
                // Build the code
                sh 'pwd'
                sh 'node --version'
                sh 'npm --version'
                sh 'npm config ls'
            }
        }
    }
}