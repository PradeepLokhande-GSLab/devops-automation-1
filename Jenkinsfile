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
                    sh 'docker build -t pradeep .'
                }
            }
        }
        stage('Push image to Hub'){
            steps{
                script{
                   withCredentials([string(credentialsId: 'pass', variable: 'docker-pass')]) {
                   sh 'docker login -u javatechie -p ${docker-pass}'
}
                   sh 'docker push pradeeplokhande/pradeep'
                }
            }
        }
    }
}
