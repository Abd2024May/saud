pipeline {
    agent any
    tools {nodejs "NodeJS"}
    stages {
        stage('testNPM') {
            steps {
                // Build the code
                sh 'npm --version'
            }
        }
        stage('Build') {
            steps {
                // Build the code
                sh "npm install"
            }
        }
        stage('Lint') {
            steps {
                // Lint the code
                sh 'npm run lint'
            }
        }

        stage('Package') {
            steps {
                // Package the code as a container
                sh 'docker build -t abedelhafez/tmdb-devops-challenge .'
            }
        }
    }
}
