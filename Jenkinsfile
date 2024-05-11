pipeline {
    agent any
    environment {
        HOME = '.'
    }
    stages {
        stage('Build') {
            steps {
                sh 'which npm'
                // Build the code
                sh "C:\Program Files\nodejs\npm install"
            }
        }
        stage('Lint') {
            steps {
                // Lint the code
                sh 'npm run lint'
            }
        }
        stage('Test') {
            steps {
                // Run tests
                sh 'npm test'
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
