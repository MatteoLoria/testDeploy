pipeline {
  agent { dockerfile true }
  tools { 
        maven 'Maven 3.3.9' 
        jdk 'jdk8' 
  }
  stages {
    stage('Build') {
      steps {
        sh 'mvn package'
      }
    }
    stage('Deploy') {
      steps {
        sh 'docker build -t springio/gs-spring-boot-docker .'
        sh 'docker run -p 8081:8081 -t springio/gs-spring-boot-docker'
      }
    }
  }
}
