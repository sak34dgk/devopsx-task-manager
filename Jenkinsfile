pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main',
                git 'https://github.com/sak34dgk/devopsx-task-manager.git'
            }
        }

        stage('Build & Test') {
            steps {
                bat 'mvn test'
            }
        }
    }
}
