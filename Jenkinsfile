pipeline {
    agent any

    stages {
        stage('Compile the code') {
            steps {
                echo 'packaginng the code'
                sh 'mvn clean package'
            }
        }
         stage('Unit test') {
            steps {
                echo 'Running unit test'
            }
        }
         stage('Security scan') {
            steps {
                echo 'Run security scan'
            }
        }
         stage('Build docker image') {
            steps {
                echo 'Creating docker image'
            }
        }
        stage('Push image to the registry') {
            steps {
                echo 'Pushing image to the registry'
            }
        }
    }
}
