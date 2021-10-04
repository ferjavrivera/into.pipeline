pipeline {
  agent any
  stages {
    stage('Say hello') {
      steps {
        echo "hello_world ${MY_NAME}!"
        sh 'java --version'
      }
    }

  }
  environment {
    MY_NAME = 'Fer'
  }
}