pipeline {
    agent any
    stages{
        stage('Build Maven'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/PradeepLokhande-GSLab/devops-automation-1']]])
            }
        }
        stage('Build docker image'){
            steps{
                script{
                    sh 'docker build -t pradeeplokhande/cicd-pipeline .'
                }
            }
        }
        stage('Push image to Hub'){
            steps{
                script{
                   sh 'docker login -u pradeeplokhande -p Pr@dip#123'
                   sh 'docker push pradeeplokhande/cicd-pipeline'               
                }
            }
        }
    }
}
