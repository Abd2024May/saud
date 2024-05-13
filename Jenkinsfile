pipeline {
    environment {
       registry = "abedelhafez/tmdb-devops-challenge"
       registryCredential = 'docker'
       dockerImage = ''
       CI = 'true'
    }
    tools {nodejs "NodeJS"}
    agent any
    stages {
        stage('testNPM') {
            steps {
                // Build the code
                sh 'npm --version'
                sh 'npm config ls'
            }
        }
    }
}