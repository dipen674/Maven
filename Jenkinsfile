pipeline {
    agent any

    environment {
        mydockerimage = "deependrabhatta/jenkins_data"
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
                sh 'docker image build -t ${mydockerimage}:${BUILD_NUMBER} .'
            }
        }
         stage('Image scanning with trivy') {
            steps {
                echo "Scanning image vulneriblity"
                sh 'trivy image ${mydockerimage}:${BUILD_NUMBER}'
        }
        }
         stage('Pushing docker image to dockerhub') {
            steps {
                echo "pushing image"
                withDockerRegistry ([credentialsId: 'jenkinsdockercred', url: '']) {
                    sh '''
                    docker push $mydockerimage:$BUILD_NUMBER
                    '''
                }
            }
        }
        stage('Deploy to devenv ') {
            steps {
                echo 'Running a Development environment'
                sh '''
                docker container stop myapp || true
                docker container rm myapp || true
                docker run -d --name myapp -p 8089:8080 ${mydockerimage}:${BUILD_NUMBER}
                '''
            }
        }
        stage('Deploy Production Environment') {
            steps {
                timeout(time:5, unit:'DAYS'){
                input message:'Approve PRODUCTION Deployment?'
                }
                echo "Running app on Prod env"
                sh '''
                docker stop mymanualdeployapp || true
                docker rm mymanualdeployapp || true
                docker run -itd --name mymanualdeployapp -p 8083:8080 $mydockerimage:$BUILD_NUMBER
                '''
            }
        }
    }
    post {
        success {
            echo 'I will always say Hello again!'
        }
    }
}