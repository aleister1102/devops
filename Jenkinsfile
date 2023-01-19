pipeline {
    agent any
    stages {
        stage ('Pull GitHub repository') {
            steps {
                git credentialsId: 'GitHub', url: 'https://github.com/aleister1102/devops.git'
            }
        }
        stage ('Build and publish Docker image') {
            steps {
                withDockerRegistry(credentialsId: 'DockerHub', url: 'https://index.docker.io/v1/') {
                    bat 'docker build -t aleister1102/devops .'
                    bat 'docker push aleister1102/devops:latest'
                }
            }
        }
    }
}