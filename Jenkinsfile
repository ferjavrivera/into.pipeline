pipeline {
  agent {
    label 'jdk11'
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