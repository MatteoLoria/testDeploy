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
        sh 'perl deploy.pl'
      }
    }
  }
}
