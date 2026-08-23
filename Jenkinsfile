pipeline {
    agent any

    stages {
        stage('Build & Test') {
            steps {
                bat 'mvnw.cmd test'
            }
        }
    }
}
