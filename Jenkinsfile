pipeline {
    agent any

    stages {
        stage('Build & Test') {
            steps {
                bat 'mvnw.cmd test'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat '"C:\\Users\\Sakshi\\AppData\\Local\\Programs\\DockerDesktop\\resources\\bin\\docker.exe" build -t devopsx-task-manager:latest .'
            }
        }
    }
}