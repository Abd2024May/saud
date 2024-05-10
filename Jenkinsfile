pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from the repository
                git 'https://github.com/Abd2024May/saud.git'
            }
        }
        stage('Build') {
            steps {
                // Build the code
                sh 'npm install'
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
                sh 'docker build -t your_image_name .'
            }
        }
    }
}
