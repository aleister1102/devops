pipeline {
    agent any
    stages {
        stage ('Clone') {
            steps {
                git 'https://github.com/aleister1102/devops.git'
            }
        }
        stage ('Docker') {
            steps {
                bat 'docker build -t marucube34/devops'
                bat 'docker push marucube34/devops'
            }
        }
    }
}