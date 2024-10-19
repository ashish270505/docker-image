pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("ashish2705/maven-hello-world:${env.BUILD_NUMBER}", ".")
                }
            }
        }
        
        stage('Push to DockerHub') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'kshitija11') {
                        dockerImage.push()
                    }
                }
            }
        }
    }
}
