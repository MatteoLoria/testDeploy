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
    stage('Remove') {
      steps {
        sh '''#!bin/bash
            for id in $(docker ps -q)
            do
                if [[ $(docker port "${id}") == *8081* ]]; then
                    echo "stopping container ${id}"
                    docker stop "${id}"
                    docker rm "${id}"
                fi
            done
            docker rmi $(docker images |grep 'test_deploy')
        '''
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
