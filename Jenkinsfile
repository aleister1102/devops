pipeline {
    agent any
    stages {
        stage ('Clone github repository') {
            steps {
                git 'https://github.com/aleister1102/devops.git'
            }
        }
        stage ('Build docker image') {
            steps {
                bat 'docker build -t marucube34/devops .'
            }
        }
        stage ('Push docker image') {
            steps {
                bat 'docker push marucube34/devops:latest'
            }
        }
    }
}