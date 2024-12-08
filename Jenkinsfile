pipeline {
    agent any

    stages {
         stage('Deploy to Kubernetes') {
            steps {
                script {
                    // Apply deployment and service YAML files
                    bat 'kubectl apply -f Deployment.yaml --validate=false'
                    bat 'kubectl apply -f service.yaml --validate=false'
                    bat 'kubectl get deployments'
                }
            }
        }
    }
}
