pipeline {
    agent any
    Environment{
        mydockerimage=deependrabhatta/jenkins_data
    }

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
                sh 'docker image build -t $mydockerimage:$BUILD_NUMBER .'
            }
        }
         stage('Image scanning with trivy') {
            steps {
                echo "Scanning image vulneriblity"
                sh 'trivy image $mydockerimage:$BUILD_NUMBER'
            }
        }
         stage('Pushing docker image to dockerhub') {
            steps {
                echo 'docker push $mydockerimage:$BUILD_NUMBER'
            }
        }
        stage('Now running a container ') {
            steps {
                echo 'Pushing image to the registry'
            }
        }
    }
}
