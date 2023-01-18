pipeline {
    agent any
    tools {
        dockerTool 'docker' 
    }
    stages {
        stage ('Clone') {
            steps {
                git 'https://github.com/marucube35/devops.git'
            }
        }
        stage ('Docker') {
            steps {
                
                withDockerRegistry(credentialsId: 'docker-hub', url: 'https://index.docker.io/v1/') {
                    sh 'docker build -t marucube34/devops:v1'
                }
            }

        }
    }
}