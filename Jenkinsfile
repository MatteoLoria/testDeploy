pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
    }

  }
  stages {
    stage('Initialize'){
      steps {
        def dockerHome = tool 'myDocker'
        env.PATH = "${dockerHome}/bin:${env.PATH}"
      }
    }
    stage('Build') {
      steps {
        echo 'Success'
      }
    }

  }
}
