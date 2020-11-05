pipeline {
  agent any
  tools { 
    maven 'Maven 3.6.3' 
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
        sh 'docker build -f Dockerfile .'
      }
    }
  }
}
