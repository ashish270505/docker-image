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
                    docker.withRegistry('https://registry.hub.docker.com', 'd125f44d-440b-4b8d-9d9e-217ea52911e0') {
                        dockerImage.push()
                    }
                }
            }
        }
    }
}
