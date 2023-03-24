pipeline {
 agent any
 stages {
   stage('Checkout Git repository') {
     steps {
       git branch: 'main', url: 'https://github.com/peterroza/jenkins-docker.git'
     }
   }
   stage('Build Docker image') {
     steps {
       script {
         def dockerfile = 'Dockerfile'
         def registry = 'http://localhost:5000'
         def imageName = 'add-copy-example'
         def imageTag = 'latest'
         def dockerImage = docker.build("${registry}/${imageName}:${imageTag}", "-f ${dockerfile} .")
         dockerImage.push()
       }
     }
   }
 }
}
