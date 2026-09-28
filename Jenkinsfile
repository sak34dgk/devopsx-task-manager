pipeline {
    agent any

    environment {
        KUBECONFIG = 'C:\\Users\\Sakshi\\.kube\\config'
    }

    stages {

        stage('Build & Test') {
            steps {
                bat 'mvnw.cmd clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat '"C:\\Users\\Sakshi\\AppData\\Local\\Programs\\DockerDesktop\\resources\\bin\\docker.exe" build -t devopsx-task-manager:latest .'
            }
        }

        stage('Check Kubernetes') {
            steps {
                bat '"C:\\Users\\Sakshi\\AppData\\Local\\Programs\\DockerDesktop\\resources\\bin\\kubectl.exe" config current-context'
                bat '"C:\\Users\\Sakshi\\AppData\\Local\\Programs\\DockerDesktop\\resources\\bin\\kubectl.exe" get nodes'
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                bat '"C:\\Users\\Sakshi\\AppData\\Local\\Programs\\DockerDesktop\\resources\\bin\\kubectl.exe" apply -f k8s\\deployment.yaml'
                bat '"C:\\Users\\Sakshi\\AppData\\Local\\Programs\\DockerDesktop\\resources\\bin\\kubectl.exe" apply -f k8s\\service.yaml'
            }
        }

        stage('Verify Deployment') {
            steps {
                bat '"C:\\Users\\Sakshi\\AppData\\Local\\Programs\\DockerDesktop\\resources\\bin\\kubectl.exe" rollout status deployment/devopsx-task-manager'
                bat '"C:\\Users\\Sakshi\\AppData\\Local\\Programs\\DockerDesktop\\resources\\bin\\kubectl.exe" get pods'
                bat '"C:\\Users\\Sakshi\\AppData\\Local\\Programs\\DockerDesktop\\resources\\bin\\kubectl.exe" get service devopsx-task-manager-service'
            }
        }
    }
}