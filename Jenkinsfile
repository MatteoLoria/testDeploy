pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh 'sh \'mvn clean package\''
      }
    }

  }
  environment {
    mvn = 'Maven 3.3.9'
    jdk = 'jdk8'
  }
}