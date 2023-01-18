pipeline {
    agent any
    stages {
        stage ('Clone') {
            steps {
                git 'https://github.com/marucube35/devops.git'
            }
        }

        stage ('Docker') {
            steps {
                withDockerRegistry(credentialsId: 'docker-hub', url: 'https://index.docker.io/v1/') {
                    sh 'docker build -t marucube34/devops'
                    sh 'docker push marucube34/devops'
                }
            }
        }
    }
}