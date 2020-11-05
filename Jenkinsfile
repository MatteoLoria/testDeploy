pipeline {
  agent any
  tools { 
    maven 'maven 3.6.3' 
    jdk 'jdk8' 
  }
  stages {
    stage('Build') {
      steps {
        sh 'mvn install'
      }
    }
    stage('Deploy') {
      steps {
        sh 'docker build -t test_deploy -f Dockerfile .'
        sh 'docker run -dp 8081:8081 test_deploy'
      }
    }
  }
}
