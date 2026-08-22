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
                bat 'docker build -t devopsx-task-manager:latest .'
            }
        }
    }
}