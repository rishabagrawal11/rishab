pipeline {
    agent any

    environment {
        GITHUB_REPO = "https://github.com/gopish12/spring-app-chart.git"
        IMAGE_NAME = "springboot"
        IMAGE_TAG = "6.0.0"
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: "${GITHUB_REPO}"
            }
        }

        stage('Code Compilation') {
            steps {
                script {
                    sh 'mvn clean install -DskipTests'
                }
            }
        }

        stage('Docker Image Build') {
            steps {
                script {
                    sh 'docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .'
                }
            }
        }

        stage('Deploy with Helm') {
            steps {
                script {
                    sh 'helm upgrade --install spring-crud-service ./helm-charts'
                }
            }
        }
    }
}
