pipeline {
    environment {
       registry = "abedelhafez/tmdb-devops-challenge"
       registryCredential = 'docker'
       dockerImage = ''
    }
    tools {nodejs "InstalledNodeJS"}
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