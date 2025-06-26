pipeline {
    agent any

    stages {
        stage('Compile the code') {
            steps {
                echo 'packaging the code'
                sh 'mvn clean package'
            }
            post {
                success {
                    echo "Archiving the Artifacts...."
                    archiveArtifacts artifacts: '**/*.war'
                }
            }
        }
        
         stage('Build docker image') {
            steps {
                echo "Building docker images'"
                sh 'docker image buile -t mytomcatimange:v1 .'
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
        stage('Push image to the registry') {
            steps {
                echo 'Pushing image to the registry'
            }
        }
    }
}
