pipeline {
    agent any

    environment {
        KUBECONFIG = 'C:\\Users\\Sakshi\\.kube\\config'
        DOCKER = 'C:\\Users\\Sakshi\\AppData\\Local\\Programs\\DockerDesktop\\resources\\bin\\docker.exe'
        KUBECTL = 'C:\\Users\\Sakshi\\AppData\\Local\\Programs\\DockerDesktop\\resources\\bin\\kubectl.exe'
    }

    stages {

        stage('Build & Test') {
            steps {
                bat 'mvnw.cmd clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat '"%DOCKER%" build -t devopsx-task-manager:%BUILD_NUMBER% .'
            }
        }

        stage('Check Kubernetes') {
            steps {
                bat '"%KUBECTL%" config current-context'
                bat '"%KUBECTL%" get nodes'
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                bat '"%KUBECTL%" apply -f k8s\\deployment.yaml'
                bat '"%KUBECTL%" apply -f k8s\\service.yaml'

                bat '"%KUBECTL%" set image deployment/devopsx-task-manager devopsx-task-manager=devopsx-task-manager:%BUILD_NUMBER%'
            }
        }

        stage('Verify Deployment') {
            steps {
                bat '"%KUBECTL%" rollout status deployment/devopsx-task-manager'
                bat '"%KUBECTL%" get pods'
                bat '"%KUBECTL%" get service devopsx-task-manager-service'
            }
        }
        stage('Health Check') {
            steps {
                bat '"%KUBECTL%" get pods'
                bat '"%KUBECTL%" get deployment devopsx-task-manager'
            }
        }
    }
}