pipeline {
    agent any

    environment {
        GITHUB_REPO = "https://github.com/gopish12/spring-app-chart.git"
        IMAGE_NAME = "springboot"
        IMAGE_TAG = "2.0.0"
        GITHUB_CREDENTIALS = "GITHUB_TOKEN"
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: "${GITHUB_REPO}",
                credentialsId: "${GITHUB_CREDENTIALS}"
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
                    sh 'helm install spring-crud-service ./spring-app-chart'
                }
            }
        }
    }
}
