pipeline {
    environment {
       registry = "abedelhafez/tmdb-devops-challenge"
       registryCredential = 'docker'
       dockerImage = ''
    }
    tools {nodejs "NodeJS"}
     environment {
            CI = 'true'
        }
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