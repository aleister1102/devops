pipeline {
    agent any
    stages {
        stage ('Clone') {
            steps {
                git 'https://github.com/aleister1102/devops.git'
            }
        }
    }

    stages {
        stage ('Docker') {
            steps {
                sh 'docker build -t marucube35/devops'
                sh 'docker push marucube35/devops'
            }
        }
    }
}