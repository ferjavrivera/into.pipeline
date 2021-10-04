pipeline {
  agent {
    label 'jdk10'
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