pipeline {
    agent any

    stages {
         stage('Deploy to Kubernetes') {
            steps {
                script {
                    // Apply deployment and service YAML files
                    bat 'cd C:\Users\abhij'
                    bat 'kubectl apply -f Deployment.yaml'
                    bat 'kubectl apply -f service.yaml'
                    bat 'kubectl get deployments'
                }
            }
        }
    }
}
