pipeline {
  agent any

  }
  stages {
    stage('Build') {
      steps {
        echo 'Success'
      }
    }
    stage('Deploy') {
      steps {
        sh 'docker build -f Dockerfile .'
      }
    }
  }
}
