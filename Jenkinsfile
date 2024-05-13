pipeline {
    agent any
        stage('Package') {
            steps {
                // Package the code as a container
                sh 'docker build -t abedelhafez/tmdb-devops-challenge .'
            }
        }
    }
}
