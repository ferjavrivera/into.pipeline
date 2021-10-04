pipeline {
  agent any
  stages {
    stage('Say hello') {
      steps {
        echo "hello_world ${MY_NAME}!"
        echo "${TEST_USER}"
        sh 'java --version'
      }
    }

  }
  environment {
    MY_NAME = 'Fer'
    TEST_USER = credentials('test-user')
  }
}