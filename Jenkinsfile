pipeline {
  agent {
    label 'jdk16'
  }
  stages {
    stage('Say hello') {
      steps {
        echo 'hello_world'
        sh 'java --version'
      }
    }

  }
}