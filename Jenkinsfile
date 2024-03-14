pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Use Git credentials to checkout source code from Git repository
                withCredentials([usernamePassword(credentialsId: 'jenkins-int-github', usernameVariable: 'GIT_USERNAME', passwordVariable: 'GIT_PASSWORD')]) {
                    git credentialsId: 'jenkins-int-github', url: 'https://github.com/slalit28/EcommerceApp.git', branch: 'master'
                }
            }
        }
        stage('Build') {
            steps {
                // Run Maven build
                sh 'mvn clean install package'
            }
        }
        stage('DockerImage') {
            steps {
                // Example: Deploy to Tomcat server
                // Adjust this step based on your deployment strategy
                withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                sh "docker login -u ${DOCKER_USERNAME} -p ${DOCKER_PASSWORD} docker.io"
                sh 'docker build -t blackhat0007/devops:latest -f Dockerfile .'
                sh 'docker push blackhat0007/devops:latest'
            }
        }
    }

    post {
        success {
            // This block is executed when the pipeline succeeds
            echo 'Pipeline succeeded!'
        }
        failure {
            // This block is executed when the pipeline fails
            echo 'Pipeline failed!'
        }
    }
}
}
