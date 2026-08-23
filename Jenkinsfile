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

        stage('Run Docker Container') {
            steps {
                bat '"C:\\Users\\Sakshi\\AppData\\Local\\Programs\\DockerDesktop\\resources\\bin\\docker.exe" stop devopsx-task-manager || exit /b 0'
                bat '"C:\\Users\\Sakshi\\AppData\\Local\\Programs\\DockerDesktop\\resources\\bin\\docker.exe" rm devopsx-task-manager || exit /b 0'
                bat '"C:\\Users\\Sakshi\\AppData\\Local\\Programs\\DockerDesktop\\resources\\bin\\docker.exe" run -d -p 8081:8080 --name devopsx-task-manager devopsx-task-manager:latest'
            }
        }
    }
}