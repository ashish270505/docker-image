pipeline {
    agent any

    stages {
         stage('Deploy to Kubernetes') {
            steps {
                script {
                    // Apply deployment and service YAML files
                    withCredentials([file(credentialsId: '0c25c479-4c1f-4102-bf6b-a79ab38a33ec', variable: 'config')]) {
                    bat 'kubectl apply -f Deployment.yaml --validate=false'
                    bat 'kubectl apply -f service.yaml --validate=false'
                    bat 'kubectl get deployments'
                }
                }
            }
        }
    }
}
